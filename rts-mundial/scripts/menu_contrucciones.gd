extends Control

@onready var cuartelLabel = $ColorRect/cuartel
@onready var baseNavalLabel = $ColorRect/baseNaval
@onready var aerodromoLabel = $ColorRect/aerodromoMilitar

@export var construcciones = "res://Resources/construcciones/"
var cuartel = load("res://Resources/construcciones/cuartel.tres") as Construccion
var baseNaval = load("res://Resources/construcciones/baseNaval.tres") as Construccion
var aeródromo = load("res://Resources/construcciones/aeródromoMilitar.tres") as Construccion
var paisJugable : PaisJugable

func construir(pais: PaisJugable) -> void:
	cuartelLabel.text = cuartel.nombre
	baseNavalLabel.text = baseNaval.nombre
	aerodromoLabel.text = aeródromo.nombre
	
	paisJugable = pais
	
	show()
	

func ocultar() -> void:
	hide()
	
	

func _on_construir_cuartel_pressed() -> void:
	paisJugable.construir(cuartel)

func _on_construir_naval_pressed() -> void:
	paisJugable.construir(baseNaval)
	

func _on_construir_aero_pressed() -> void:
	paisJugable.construir(aeródromo)
	
