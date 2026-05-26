@tool
extends TextureButton


enum paises {ARGENTINA, BRASIL, CHILE, MEXICO, USA, CANADA, EGIPTO, ETIOPIA, SAHARA, SUDAFRICA,ALEMANIA,FRANCIA,INGLATERRA,AUSTRALIA,SANMARINO,RUSIA,CHINA, INDIA}
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
		
		#EUROPA
		paises.ALEMANIA:
			texture_normal = preload("res://assets/europa/alemania/alemania_default.png")
			texture_hover = preload("res://assets/europa/alemania/alemania_Hover.png")
			texture_pressed = preload("res://assets/europa/alemania/alemania_Pressed.png")
		paises.FRANCIA:
			texture_normal = preload("res://assets/europa/francia/francia_default.png")
			texture_hover = preload("res://assets/europa/francia/francia_hover.png")
			texture_pressed = preload("res://assets/europa/francia/francia_pressed.png")
		paises.INGLATERRA:
			texture_normal = preload("res://assets/europa/inglaterra/inglaterra_default.png")
			texture_hover = preload("res://assets/europa/inglaterra/inglaterra_hover.png")
			texture_pressed = preload("res://assets/europa/inglaterra/inglaterra_pressed.png")
		
		#OCEANIA
		paises.AUSTRALIA:
			texture_normal = preload("res://assets/oceania/Australia/australia_default.png")
			texture_hover = preload("res://assets/oceania/Australia/australia_hover.png")
			texture_pressed = preload("res://assets/oceania/Australia/australia_pressed.png")
		paises.SANMARINO:
			texture_normal = preload("res://assets/oceania/SanMarino/sanmarino_default.png")
			texture_hover = preload("res://assets/oceania/SanMarino/sanmarino_hover.png")
			texture_pressed = preload("res://assets/oceania/SanMarino/sanmarino_pressed.png")
			
		#ASIA
		paises.RUSIA:
			texture_normal = preload("res://assets/asia/Rusia/Rusia_default.png")
			texture_hover = preload("res://assets/asia/Rusia/rusia_hover.png")
			texture_pressed = preload("res://assets/asia/Rusia/rusia_pressed.png")
		paises.CHINA:
			texture_normal = preload("res://assets/asia/China/china_default.png")
			texture_hover = preload("res://assets/asia/China/china_hover.png")
			texture_pressed = preload("res://assets/asia/China/china_pressed.png")
		paises.INDIA:
			texture_normal = preload("res://assets/asia/India/india_default.png")
			texture_hover = preload("res://assets/asia/India/india_hover.png")
			texture_pressed = preload("res://assets/asia/India/india_pressed.png")
