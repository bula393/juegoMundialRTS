extends Control
class_name MenuPais

@onready var jugador = $ColorRect/Jugador
@onready var tierra = $ColorRect/tierra
@onready var aire = $ColorRect/aire
@onready var mar = $ColorRect/mar
@onready var construcciones = $ColorRect/construcciones
@onready var territorios = $ColorRect/territorios
@onready var resultado_ataque: ColorRect = $"../resultadoAtaque"
@onready var ataque_label: Label = $"../resultadoAtaque/ataqueLabel"
@onready var ataque_label_timer: Timer = $"../resultadoAtaque/ataqueLabelTimer"

@export var menu_construcciones: Control

var paisJugable : PaisJugable


func mostrar_info(pais: PaisJugable) -> void:
	var listaCap = pais.almacenamientoTotalDisponible()
	jugador.text = "País: " + str(pais.nombrePais)
	territorios.text = "Territorios: " + str(pais.territoriosPropios.size())
	tierra.text = "Tropas terrestres: " + str(pais.tropasTerrestres) + "/" + str(listaCap[0])
	aire.text = "Tropas aéreas: " + str(pais.tropasAereas)+ "/" + str(listaCap[2])
	mar.text = "Tropas marítimas: " + str(pais.tropasMaritimas)+ "/" + str(listaCap[1])
	construcciones.text = "Construcciones: " + str(pais.construccionesHechas.size())
	
	if pais.soyPaisActual:
		$ColorRect/Construir.text = "Construir"
		$ColorRect/Construir.modulate = Color.GREEN
	else :
		$ColorRect/Construir.text = "Atacar"	
		$ColorRect/Construir.modulate = Color.RED
	
	
	paisJugable = pais
	
	show()
	

func ocultar() -> void:
	menu_construcciones.ocultar()
	hide()



func _on_construir_pressed() -> void:
	if paisJugable.soyPaisActual:
		if menu_construcciones.visible: #.visible es como un show() pero como es booleano sirve para los if -Liras :D
			menu_construcciones.ocultar()
		else:
			menu_construcciones.construir(paisJugable)
	else:
		_atacar(paisJugable)

func _atacar(p):
	var atacante = get_parent().get_node("Mapa").paisTurnoActual
	var atacanteTerrestres = atacante.tropasTerrestres
	var atacanteMaritimas = atacante.tropasMaritimas
	var atacanteAereas = atacante.tropasAereas
	
	var atacanteFinal = atacanteTerrestres + atacanteMaritimas * 2 + atacanteAereas * 3 
	
	
	var enemigoTerrestres = p.tropasTerrestres
	var enemigoMaritimas = p.tropasMaritimas
	var enemigoAereas = p.tropasAereas
	var calcRestaTerrestres = 0
	var calcRestaMaritimas = 0
	var calcRestaAereas = 0
	
	var enemigoFinal = (enemigoTerrestres + enemigoMaritimas * 2 + enemigoAereas * 3)
	
	
	if enemigoFinal >= atacanteFinal:
		atacante.tropasTerrestres -= round(atacanteTerrestres * 0.50)
		atacante.tropasMaritimas -= round(atacanteMaritimas * 0.50)
		atacante.tropasAereas -= round(atacanteAereas * 0.50)
		
		ataque_label.text = "ATAQUE FALLIDO"
	else:
		atacante.tropasTerrestres -= round(atacanteTerrestres * 0.25)
		atacante.tropasMaritimas -= round(atacanteMaritimas * 0.25)
		atacante.tropasAereas -= round(atacanteAereas * 0.25)
		
		p.tropasTerrestres -= round(enemigoTerrestres * 0.25)
		p.tropasMaritimas -= round(enemigoMaritimas * 0.25)
		p.tropasAereas -= round(enemigoAereas * 0.25)
		
		p.territoriosPropios.erase(p.territorioSeleccionado)
		atacante.agregaTerritorio(p.territorioSeleccionado)
		ataque_label.text = "ATAQUE EXITOSO"
	resultado_ataque.show()
	ataque_label_timer.start()
	


func _on_ataque_label_timer_timeout() -> void:
	resultado_ataque.hide()
