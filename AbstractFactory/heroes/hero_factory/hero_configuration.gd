extends Node

@export
var heroesArray: Array[PackedScene]
var heroes: Dictionary


func _ready():
	for hero in heroesArray:
		var p = hero.instantiate()
		heroes[p.id] = hero
		p.queue_free()


func get_hero_by_id(id: String) -> PackedScene:
	return heroes[id]
