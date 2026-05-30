extends Node2D

var paisesJugable:Array[PaisJugable] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for pais in get_children():
		var p : PaisJugable = PaisJugable.new()
		p.crear(pais)
		paisesJugable.append(p)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
