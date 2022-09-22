extends Node

@export
var weaponsArray: Array[PackedScene]
var weapons: Dictionary


func _ready():
	for weapon in weaponsArray:
		var p = weapon.instantiate()
		weapons[p.id] = weapon
		p.queue_free()


func get_weapon_by_id(id: String) -> PackedScene:
	return weapons[id]
