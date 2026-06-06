
extends Node
class_name PaisJugable
var nombrePais
var territoriosPropios := []
var	construccionesHechas : Array[Construccion] = []
var menu_pais
@export var menuRecuros : Node 
var construccionesEnProceso :Array[Construccion] = []
var tropasTerrestres = 0
var tropasMaritimas = 0
var	tropasAereas = 0
var madera = 0
var metal = 0
var petroleo = 0
var generacionMadera = 100
var generacionHierro = 100
var generacionPetrolio = 100
var soyPaisActual = false

var aeródromoMilitar = preload("res://Resources/construcciones/aeródromoMilitar.tres")
var baseNaval = preload("res://Resources/construcciones/baseNaval.tres")
var cuartel = preload("res://Resources/construcciones/cuartel.tres")

func crear(boton_territorio: TextureButton) -> void:
	nombrePais = boton_territorio.name
	agregaTerritorio(boton_territorio)

func agregaTerritorio(botonTerritorio: TextureButton) -> void:
	territoriosPropios.append(botonTerritorio)
	botonTerritorio.pressed.connect(territorioPresionado.bind(botonTerritorio))

func cambiarTurno() -> void:
	soyPaisActual = !soyPaisActual

func iniciarTurno() -> void:
	revisarConstruccionesEnProceso()
	generarTropas()
	generarRecursos()

func generarRecursos() -> void:
	madera += generacionMadera * territoriosPropios.size()
	metal += generacionHierro * territoriosPropios.size()
	petroleo += generacionPetrolio * territoriosPropios.size()

func conquistarTerritorio(paisConquistado: PaisJugable) -> void:
	for botonTerritorio in paisConquistado.territoriosPropios:
		agregaTerritorio(botonTerritorio)

		

func territorioPresionado(territorio: TextureButton) -> void:
	seleccionar_todos(territorio.button_pressed)
	if territorio.button_pressed:
		menu_pais.mostrar_info(self)
	else:
		menu_pais.ocultar()

func seleccionar_todos(estado: bool) -> void:
	for territorio in territoriosPropios:
		territorio.set_pressed_no_signal(estado)
		
	
	
func construir(c : Construccion) -> void:
	if not c.puedeConstruirse(madera,metal,petroleo):
		return
	madera -= c.maderaNecesaria
	metal -= c.metalNecesaria
	petroleo -= c.petrolioNecesaria
	construccionesEnProceso.append(c)
	establecerRecursosActuales()
	
func establecerRecursosActuales() -> void:
	menuRecuros.cambio_turno(madera, metal, petroleo)	

func revisarConstruccionesEnProceso() -> void: 
	for c in construccionesEnProceso:		
		c.tiempoDeConstruccion -= 1
		if c.tiempoDeConstruccion == 0 :
			construccionesEnProceso.erase(c)
			construccionesHechas.append(c)
		
		
func almacenamientoTotalDisponible() -> Array[int]:
	var listaCapacidades : Array[int] =[0,0,0]
	for construccion in construccionesHechas:
		match construccion.nombre:
					"cuartel":
						listaCapacidades[0] += construccion.cantidadtropasAlmacenadas
					"baseNaval":
						listaCapacidades[1] += construccion.cantidadtropasAlmacenadas
					"aeródromoMilitar":
						listaCapacidades[2] += construccion.cantidadtropasAlmacenadas
	return listaCapacidades
		
func generarTropas() -> void:
	var listaCapacidades = almacenamientoTotalDisponible()
	for contruccion in construccionesHechas:
		if contruccion.puedeProducir():
			var tropasAgregadas = contruccion.tropasProducidas
			var cantidadTropasProducibles = petroleo
			match contruccion.nombre:
				"cuartel":
					if ((tropasAgregadas + tropasTerrestres) >= listaCapacidades[0]):
						tropasTerrestres = listaCapacidades[0]	
					else:
						tropasTerrestres += tropasAgregadas
					contruccion.tiempoEnfriamiento = cuartel.tiempoEnfriamiento
				"baseNaval":
					cantidadTropasProducibles/=50
					if cantidadTropasProducibles < tropasAgregadas:
						tropasAgregadas = cantidadTropasProducibles
					if ((tropasAgregadas + tropasMaritimas) >= listaCapacidades[1]):
						tropasMaritimas = listaCapacidades[1]	
					else:
						tropasMaritimas += tropasAgregadas
					contruccion.tiempoEnfriamiento = baseNaval.tiempoEnfriamiento
				"aeródromoMilitar":
					cantidadTropasProducibles/=75
					if cantidadTropasProducibles < tropasAgregadas:
						tropasAgregadas = cantidadTropasProducibles
					if ((tropasAgregadas + tropasAereas) >= listaCapacidades[2]):
						tropasAereas = listaCapacidades[2]	
					else:
						tropasAereas += tropasAgregadas
					contruccion.tiempoEnfriamiento = aeródromoMilitar.tiempoEnfriamiento
		else :
			contruccion.tiempoEnfriamiento -= 1
