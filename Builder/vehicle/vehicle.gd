extends Node

class_name Vehicle


var _chasis: Chasis
var _tyres: Dictionary
var _position: Vector2
var _rotation: Quaternion

func set_components(tyres: Dictionary, chasis: Chasis):
	_tyres = tyres
	_chasis = chasis 

func setup(position, rotation, chasis, tyres):
	_chasis = chasis
	_position = position
	_rotation = rotation
	_tyres = tyres
	
	add_child(_chasis)
	
	for t in _tyres.values():
		add_child(t)
	
	return self
