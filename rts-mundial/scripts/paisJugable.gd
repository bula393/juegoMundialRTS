extends Node
class_name PaisJugable

var nombrePais
var territoriosPropios := []
var	construccionesHechas := []
var construccionesEnProceso := []
var tropasTerrestres
var tropasMaritimas
var	tropasAerias

func crear(boton_territorio: TextureButton) -> void:
	nombrePais = boton_territorio.name
	agregaTerritorio(boton_territorio)

func agregaTerritorio(botonTerritorio: TextureButton) -> void:
	territoriosPropios.append(botonTerritorio)
	botonTerritorio.pressed.connect(territorioPresionado.bind(botonTerritorio))

func territorioPresionado(territorio: TextureButton) -> void:
	seleccionar_todos(territorio.button_pressed)

func seleccionar_todos(estado: bool) -> void:
	for territorio in territoriosPropios:
		territorio.set_pressed_no_signal(estado)
