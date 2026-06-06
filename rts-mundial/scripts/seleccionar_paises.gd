extends Control

var jugadorEligiendoActual = 1



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for  i in get_children():
		i.text = i.name
	cambiarJugadorEligiendo()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func elegirPais(node : Button) -> void :
	Global.paisesSeleccionados.append(node.name)
	jugadorEligiendoActual += 1
	if jugadorEligiendoActual > Global.cantidadDePaises:
		get_tree().change_scene_to_file("res://scenes/level.tscn")
	else :
		cambiarJugadorEligiendo()
		node.text = "elegido"

func cambiarJugadorEligiendo() -> void:
	$Label.text = "Jugador" + str(jugadorEligiendoActual)
	
	

	


func _on_argentina_pressed() -> void:
	elegirPais($ARGENTINA)

func _on_brasil_pressed() -> void:
		elegirPais($BRASIL)



func _on_chile_pressed() -> void:
	elegirPais($CHILE)



func _on_mexico_pressed() -> void:
	elegirPais($MEXICO)

func _on_usa_pressed() -> void:
	elegirPais($USA)

func _on_canada_pressed() -> void:
	elegirPais($CANADA)

func _on_egipto_pressed() -> void:
	elegirPais($EGIPTO)

func _on_etiopia_pressed() -> void:
	elegirPais($ETIOPIA)

func _on_sahara_pressed() -> void:
	elegirPais($SAHARA)

func _on_sudafrica_pressed() -> void:
	elegirPais($SUDAFRICA)

func _on_alemania_pressed() -> void:
	elegirPais($ALEMANIA)

func _on_francia_pressed() -> void:
	elegirPais($FRANCIA)

func _on_inglaterra_pressed() -> void:
	elegirPais($INGLATERRA)

func _on_australia_pressed() -> void:
	elegirPais($AUSTRALIA)

func _on_sanmarino_pressed() -> void:
	elegirPais($SANMARINO)

func _on_rusia_pressed() -> void:
	elegirPais($RUSIA)

func _on_china_pressed() -> void:
	elegirPais($CHINA)

func _on_india_pressed() -> void:
	elegirPais($INDIA)
