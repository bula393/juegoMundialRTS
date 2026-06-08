extends Control

@onready var cuartelLabel = $ColorRect/cuartel
@onready var baseNavalLabel = $ColorRect/baseNaval
@onready var aerodromoLabel = $ColorRect/aerodromoMilitar

@export var construcciones = "res://Resources/construcciones/"
var cuartel : Construccion= load("res://Resources/construcciones/cuartel.tres") 
var baseNaval : Construccion= load("res://Resources/construcciones/baseNaval.tres") 
var aeródromo : Construccion= load("res://Resources/construcciones/aeródromoMilitar.tres") 
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
	var c :Construccion= cuartel.duplicate()
	paisJugable.construir(c)

func _on_construir_naval_pressed() -> void:
	var c :Construccion= baseNaval.duplicate()
	paisJugable.construir(baseNaval)
	

func _on_construir_aero_pressed() -> void:
	var c :Construccion= aeródromo.duplicate()
	paisJugable.construir(aeródromo)
	
