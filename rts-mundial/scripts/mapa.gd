extends Node2D

var paisesJugable:Array[PaisJugable] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for pais in get_children():
		if(pais.name != "Brasil"):
			var p : PaisJugable = PaisJugable.new()
			p.crear(pais)
			paisesJugable.append(p)
		else:
			for p in paisesJugable:
				if p.nombrePais == "Argentina":
					p.agregaTerritorio(pais)
					break
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
