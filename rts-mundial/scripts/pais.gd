@tool
extends TextureButton


enum paises {ARGENTINA, BRASIL, CHILE, MEXICO, USA, CANADA, EGIPTO, ETIOPIA, SAHARA, SUDAFRICA}
@export var pais:paises:
	set(value):
		pais = value
		_cargar_texturas()


func _ready() -> void:
	_cargar_texturas()


func _cargar_texturas():
	match pais:
		#AMERICA
		paises.ARGENTINA:
			texture_normal = preload("res://assets/america/argentina/argentina_default.png")
			texture_hover = preload("res://assets/america/argentina/argentina_hover.png")
			texture_pressed = preload("res://assets/america/argentina/argentina_pressed.png")
		paises.BRASIL:
			texture_normal = preload("res://assets/america/brasil/brasil_default.png")
			texture_hover = preload("res://assets/america/brasil/brasil_hover.png")
			texture_pressed = preload("res://assets/america/brasil/brasil_pressed.png")
		paises.CHILE:
			texture_normal = preload("res://assets/america/chile/chile_default.png")
			texture_hover = preload("res://assets/america/chile/chile_hover.png")
			texture_pressed = preload("res://assets/america/chile/chile_pressed.png")
		paises.MEXICO:
			texture_normal = preload("res://assets/america/mexico/mexico_default.png")
			texture_hover = preload("res://assets/america/mexico/mexico_hover.png")
			texture_pressed = preload("res://assets/america/mexico/mexico_pressed.png")
		paises.USA:
			texture_normal = preload("res://assets/america/usa/usa_default.png")
			texture_hover = preload("res://assets/america/usa/usa_hover.png")
			texture_pressed = preload("res://assets/america/usa/usa_pressed.png")
		paises.CANADA:
			texture_normal = preload("res://assets/america/canada/canada_default.png")
			texture_hover = preload("res://assets/america/canada/canada_hover.png")
			texture_pressed = preload("res://assets/america/canada/canada_pressed.png")
		
		#AFRICA
		paises.EGIPTO:
			texture_normal = preload("res://assets/africa/egipto/egipto_default.png")
			texture_hover = preload("res://assets/africa/egipto/egipto_hover.png")
			texture_pressed = preload("res://assets/africa/egipto/egipto_pressed.png")
		paises.ETIOPIA:
			texture_normal = preload("res://assets/africa/etiopia/etiopia_default.png")
			texture_hover = preload("res://assets/africa/etiopia/etiopia_hover.png")
			texture_pressed = preload("res://assets/africa/etiopia/etiopia_pressed.png")
		paises.SAHARA:
			texture_normal = preload("res://assets/africa/sahara/sahara_default.png")
			texture_hover = preload("res://assets/africa/sahara/sahara_hover.png")
			texture_pressed = preload("res://assets/africa/sahara/sahara_pressed.png")
		paises.SUDAFRICA:
			texture_normal = preload("res://assets/africa/sudafrica/sudafrica_default.png")
			texture_hover = preload("res://assets/africa/sudafrica/sudafrica_hover.png")
			texture_pressed = preload("res://assets/africa/sudafrica/sudafrica_pressed.png")
