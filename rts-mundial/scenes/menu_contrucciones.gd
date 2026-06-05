extends Control

@onready var cuartelLabel = $ColorRect/cuartel
@onready var baseNavalLabel = $ColorRect/baseNaval
@onready var aerodromoLabel = $ColorRect/aerodromoMilitar

@export var construcciones = "res://Resources/construcciones/"
var cuartel = load("res://Resources/construcciones/cuartel.tres") as Construccion
var baseNaval = load("res://Resources/construcciones/baseNaval.tres") as Construccion
var aeródromo = load("res://Resources/construcciones/aeródromoMilitar.tres") as Construccion


func construir(pais: PaisJugable) -> void:
	cuartel.text = cuartel.nombre
