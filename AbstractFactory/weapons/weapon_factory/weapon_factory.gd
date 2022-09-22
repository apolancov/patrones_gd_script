extends Node

@onready
var weapon_config = $WeaponConfiguration


func create(id: String) -> Weapon:
	var weapon = weapon_config.get_weapon_by_id(id)
	return weapon.instantiate()
