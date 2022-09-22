extends Node2D

class_name Chasis

@export
var _frontRightTyrePosition: Vector2

@export
var _frontLeftTyrePosition: Vector2

@export
var _rearRightTyrePosition: Vector2

@export
var _rearLeftTyrePosition: Vector2

var _chasis

func get_tyre_position(position):
	match position:
		Tyre.FrontLeft:
			return _frontLeftTyrePosition
		Tyre.FrontRight:
			return _frontRightTyrePosition
		Tyre.RearLeft:
			return _rearLeftTyrePosition
		Tyre.RearRight:
			return _rearRightTyrePosition


func setup(chasis):
	_chasis = chasis
	return _chasis

