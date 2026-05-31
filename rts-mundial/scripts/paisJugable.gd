extends Node
class_name PaisJugable

@export var menu_pais: MenuPais
var nombrePais
var territoriosPropios := []
var	construccionesHechas := []
var construccionesEnProceso := []
var tropasTerrestres = 0
var tropasMaritimas = 0
var	tropasAerias = 0
var madera = 0
var hierro = 0
var petroleo = 0
var generacionMadera = 100
var generacionHierro = 100
var generacionPetrolio = 100

func crear(boton_territorio: TextureButton) -> void:
	nombrePais = boton_territorio.name
	agregaTerritorio(boton_territorio)

func agregaTerritorio(botonTerritorio: TextureButton) -> void:
	territoriosPropios.append(botonTerritorio)
	botonTerritorio.pressed.connect(territorioPresionado.bind(botonTerritorio))

func conquistarTerritorio(paisConquistado: PaisJugable) -> void:
	for botonTerritorio in paisConquistado.territoriosPropios:
		agregaTerritorio(botonTerritorio)
	generacionHierro += paisConquistado.generacionHierro
	generacionMadera += paisConquistado.generacionMadera
	generacionPetrolio += paisConquistado.generacionPetrolio
		

func cicloTropas() -> void:
	pass

func territorioPresionado(territorio: TextureButton) -> void:
	seleccionar_todos(territorio.button_pressed)
	if territorio.button_pressed:
		menu_pais.mostrar_info(self)
	else:
		menu_pais.ocultar()

func seleccionar_todos(estado: bool) -> void:
	for territorio in territoriosPropios:
		territorio.set_pressed_no_signal(estado)
		
	
	
func
