extends Node


static func ship_rotate(delta, ship: RigidBody3D, rotate_increment):
	
	# rotate around the x axis
	var pitch_input = Input.get_axis(
		"ship_pitch_neg",
		"ship_pitch_pos"
	)
	
	# rotate around the y axis
	var yaw_input = Input.get_axis(
		"ship_yaw_neg",
		"ship_yaw_pos"
	)
	
	# rotate around the z axis
	var roll_input = Input.get_axis(
		"ship_roll_neg",
		"ship_roll_pos"
	)
	
	ship.rotate(Vector3.RIGHT, pitch_input * rotate_increment * delta)
	ship.rotate(Vector3.UP, yaw_input * rotate_increment * delta)
	ship.rotate(Vector3.FORWARD, roll_input * rotate_increment * delta)
		
static func ship_move(delta, ship: RigidBody3D, speed):
	var thrust_input = Input.get_axis(
		"ship_thrust_backward",
		"ship_thrust_forward"
	)
	
	var front = -ship.global_transform.basis.z
	ship.apply_central_force(front * (thrust_input * speed))
