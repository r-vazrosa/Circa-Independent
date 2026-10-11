extends Node3D

var ship_scene = preload("res://Scenes/ship.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ship = ship_scene.instantiate()
	add_child(ship)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
