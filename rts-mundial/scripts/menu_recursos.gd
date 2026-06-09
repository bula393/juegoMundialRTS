extends Control


func actualizar_recursos(madera: int, metal: int, petroleo: int, soldados: int, barcos: int, aviones: int) -> void:
	var maderaLabel = $ColorRect/madera
	var metalLabel = $ColorRect/metal
	var petroleoLabel = $ColorRect/petroleo
	var soldadosLabel = $"ColorRect Units/soldado"
	var barcoLabel = $"ColorRect Units/barco"
	var avionLabel = $"ColorRect Units/avion"
	
	
	maderaLabel.text = str(madera)
	metalLabel.text = str(metal)
	petroleoLabel.text = str(petroleo)
	soldadosLabel.text = str(soldados)
	barcoLabel.text = str(barcos)
	avionLabel.text = str(aviones)
	
	
