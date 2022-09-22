extends Node

@onready
var hero_config = $HeroConfiguration


func create(id: String) -> Hero:
	var hero = hero_config.get_hero_by_id(id)
	return hero.instantiate()
