extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_5_pressed() -> void:
	Global.cantidadDePaises = 3
	get_tree().change_scene_to_file("res://scenes/seleccionarPaises.tscn")
	


func _on_button_6_pressed() -> void:
	Global.cantidadDePaises = 4
	get_tree().change_scene_to_file("res://scenes/seleccionarPaises.tscn")


func _on_button_7_pressed() -> void:
	Global.cantidadDePaises = 5
	get_tree().change_scene_to_file("res://scenes/seleccionarPaises.tscn")


func _on_button_8_pressed() -> void:
	Global.cantidadDePaises = 6
	get_tree().change_scene_to_file("res://scenes/seleccionarPaises.tscn")
