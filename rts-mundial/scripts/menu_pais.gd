extends Control
class_name MenuPais

@onready var jugador = $ColorRect/Jugador
@onready var tierra = $ColorRect/tierra
@onready var aire = $ColorRect/aire
@onready var mar = $ColorRect/mar
@onready var construcciones = $ColorRect/construcciones
@onready var territorios = $ColorRect/territorios

func mostrar_info(pais: PaisJugable) -> void:
	jugador.text = "País: " + str(pais.nombrePais)
	territorios.text = "Territorios: " + str(pais.territoriosPropios.size())
	tierra.text = "Tropas terrestres: " + str(pais.tropasTerrestres)
	aire.text = "Tropas aéreas: " + str(pais.tropasAerias)
	mar.text = "Tropas marítimas: " + str(pais.tropasMaritimas)
	construcciones.text = "Construcciones: " + str(pais.construccionesHechas.size())
	
	show()
	
func ocultar() -> void:
	hide()
	
