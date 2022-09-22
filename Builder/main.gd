extends Node2D

@export var tyres: Array[PackedScene]
@export var chasis: PackedScene
@export var vehicle: PackedScene
const VehicleBuilder = preload("res://vehicle/vehicle_builder.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	var vehicleBuilder = VehicleBuilder.new()
	vehicleBuilder = vehicleBuilder.from_vehicle(vehicle.instantiate() as Vehicle)
	vehicleBuilder = vehicleBuilder.with_chasis(chasis.instantiate() as Chasis)
	vehicleBuilder = vehicleBuilder.with_position(Vector2())
	vehicleBuilder = vehicleBuilder.with_rotation(Quaternion())
	
	for tyre in tyres:
		var newTyre = tyre.instantiate() as Tyre
		vehicleBuilder = vehicleBuilder.with_tyre(newTyre.tyrePosition, newTyre)
	
	var car = vehicleBuilder.build()
	
	self.add_child(car)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
