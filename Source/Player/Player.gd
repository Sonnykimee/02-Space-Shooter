extends KinematicBody2D

# Initialzie variables
export var speed = 140 # Speed of the player ship.

var velocity = Vector2.ZERO

# Get user input and returns player's direction according to the input keys.
func get_input_direction():
	var dx = int(Input.is_action_pressed("MOVE_RIGHT")) - int(Input.is_action_pressed("MOVE_LEFT"))
	var dy = int(Input.is_action_pressed("MOVE_DOWN")) - int(Input.is_action_pressed("MOVE_UP"))
	return Vector2(dx, dy)
	

func _physics_process(delta):
	# Initialize x, y velocity
	var dir = get_input_direction()
	var x_vel = speed * dir.x
	var y_vel = speed * dir.y
	
	# Move according to velocity
	
	velocity.x = x_vel 
	velocity.y = y_vel
	move_and_slide(velocity)
