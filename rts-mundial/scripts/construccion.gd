extends Resource
class_name Construccion

@export var nombre : String
@export var tiempoDeConstruccion  :int
@export var maderaNecesaria :int 
@export var metalNecesaria :int 
@export var petrolioNecesaria:int
@export var tropasProducidas :int
@export var tiempoEnfriamiento :int 
@export var cantidadtropasAlmacenadas :int 



func puedeConstruirse(madera: int,metal: int, petrolio : int) -> bool:
	return madera>=maderaNecesaria and metal>=metalNecesaria and petrolio>=petrolioNecesaria


func puedeProducir() -> bool:
	return tiempoEnfriamiento >= 0
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
