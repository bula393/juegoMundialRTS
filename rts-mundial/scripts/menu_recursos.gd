extends Control


func actualizar_recursos(madera: int, metal: int, petroleo: int, soldados: int) -> void:
	var maderaLabel = $ColorRect/madera
	var metalLabel = $ColorRect/metal
	var petroleoLabel = $ColorRect/petroleo
	var soldadosLabel = $"ColorRect Units/soldado"
	maderaLabel.text = str(madera)
	metalLabel.text = str(metal)
	petroleoLabel.text = str(petroleo)
	soldadosLabel.text = str(soldados)
	
	
