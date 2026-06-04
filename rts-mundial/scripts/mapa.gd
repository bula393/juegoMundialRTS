extends Node2D

enum paises {ARGENTINA, BRASIL, CHILE, MEXICO, USA, CANADA, EGIPTO, ETIOPIA, SAHARA, SUDAFRICA,ALEMANIA,FRANCIA,INGLATERRA,AUSTRALIA,SANMARINO,RUSIA,CHINA, INDIA}

var paisesSeleccionados = ["ARGENTINA","MEXICO","SUDAFRICA"]

var paisesAsortiar = []


	


@onready var menu_pais = $"../menuPais"
var paisesJugable:Array[PaisJugable] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	armarPaisesJugables()
	sortiarPaisesRestantes()
		
		

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func armarPaisesJugables() -> void:
	for pais in get_children():
		var estaSelecciona = false
		for p in paisesSeleccionados:
			if pais.name.to_upper() == p:
				estaSelecciona =true
		if estaSelecciona:		
			var p : PaisJugable = PaisJugable.new()
			p.crear(pais)
			p.menu_pais = menu_pais
			paisesJugable.append(p)
		else:
			paisesAsortiar.append(pais)
	
func sortiarPaisesRestantes() -> void:
	var cantidadPorPais = paisesAsortiar.size() / paisesJugable.size()
	
	for pais in paisesJugable:
		for i in range(cantidadPorPais):
			var paisAgregado = paisesAsortiar.pick_random()
			pais.agregaTerritorio(paisAgregado)
			paisesAsortiar.erase(paisAgregado)
