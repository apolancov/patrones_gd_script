extends Node

class_name VehicleBuilder

var _chasis: Chasis
var _tyres: Dictionary
var _position: Vector2
var _rotation: Quaternion
var _vehicle: Vehicle

func with_chasis(chasis: Chasis) -> VehicleBuilder:
	_chasis = chasis
	return self


func with_tyre(position: int, tyre: Tyre) -> VehicleBuilder:
	_tyres[position] = tyre
	return self


func with_position(position: Vector2) -> VehicleBuilder:
	_position = position
	return self


func with_rotation(rotation: Quaternion) -> VehicleBuilder:
	_rotation = rotation
	return self


func from_vehicle(vehicle: Vehicle) -> VehicleBuilder:
	_vehicle = vehicle
	return self


func build():
	var chasis = _chasis.setup(_chasis)
	var tyres:Dictionary
	var vehicle = _vehicle.setup(_position, _rotation, _chasis, _tyres)
	return vehicle
