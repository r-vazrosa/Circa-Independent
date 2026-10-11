extends RigidBody3D

const ShipMovement = preload("res://Scripts/ship_movement_utils.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Calls at a fixed rate
func _physics_process(delta: float) -> void:
	ShipMovement.ship_rotate(delta, self, 1.0)
	ShipMovement.ship_move(delta, self, 1.0)
