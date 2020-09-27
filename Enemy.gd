extends KinematicBody2D

# Initialzie variables
export var hp = 1 # Bullet hits until get destroyed
export var speed = 40 # Speed of y-axis approaching

# Movement
# Moves down in y_axis with velocity of own speed
func _physics_process(delta):
	var velocity = Vector2(0, speed)
	move_and_slide(velocity)
