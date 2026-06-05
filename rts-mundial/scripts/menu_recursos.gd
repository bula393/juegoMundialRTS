extends Control


func cambio_turno(madera: int, metal: int, petroleo: int) -> void:
	var maderaLabel = $ColorRect/madera
	var metalLabel = $ColorRect/metal
	var petroleoLabel = $ColorRect/petroleo
	maderaLabel.text = str(madera)
	metalLabel.text = str(metal)
	petroleoLabel.text = str(petroleo)
	
