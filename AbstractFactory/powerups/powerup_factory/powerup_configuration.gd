extends Node

@export
var PowerupsArray: Array[PackedScene]

var powerups: Dictionary

func _ready():
	for power in PowerupsArray:
		var p = power.instantiate()
		powerups[p.id] = power
		p.queue_free()


func get_powerup_by_id(id: String) -> PackedScene:
	return powerups[id]
