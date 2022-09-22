extends Node

@onready
var powerup_config = $PowerupConfiguration


func create(id: String) -> PowerUp:
	var powerup = powerup_config.get_powerup_by_id(id)
	return powerup.instantiate()
