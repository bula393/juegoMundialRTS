extends Control
class_name MenuPais

@onready var jugador = $ColorRect/Jugador
@onready var tierra = $ColorRect/tierra
@onready var aire = $ColorRect/aire
@onready var mar = $ColorRect/mar
@onready var construcciones = $ColorRect/construcciones
@onready var territorios = $ColorRect/territorios
@export var menu_construcciones: Control
var paisJugable : PaisJugable
func mostrar_info(pais: PaisJugable) -> void:
	var listaCap = pais.almacenamientoTotalDisponible()
	jugador.text = "País: " + str(pais.nombrePais)
	territorios.text = "Territorios: " + str(pais.territoriosPropios.size())
	tierra.text = "Tropas terrestres: " + str(pais.tropasTerrestres) + "/" + str(listaCap[0])
	aire.text = "Tropas aéreas: " + str(pais.tropasAereas)+ "/" + str(listaCap[1])
	mar.text = "Tropas marítimas: " + str(pais.tropasMaritimas)+ "/" + str(listaCap[2])
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
