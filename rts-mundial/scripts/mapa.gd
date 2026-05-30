extends Node2D
@onready var menu_pais = $"../menuPais"
var paisesJugable:Array[PaisJugable] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for pais in get_children():
<<<<<<< HEAD
		var p : PaisJugable = PaisJugable.new()
		p.crear(pais)
		paisesJugable.append(p)
=======
		if(pais.name != "Brasil"):
			var p : PaisJugable = PaisJugable.new()
			p.menu_pais = menu_pais
			p.crear(pais)
			paisesJugable.append(p)
		else:
			for p in paisesJugable:
				if p.nombrePais == "Argentina":
					p.agregaTerritorio(pais)
					break
>>>>>>> c4213b005b5a6c87163447522489fa102e76a79f
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
