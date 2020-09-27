extends Node

# Initialize variables
var socre = 0 # Highscore
var health = 100 # Player's health

# If quit button is clicked, then quit the game.
func _process(delta):
	if Input.is_action_pressed("quit"):	
		get_tree().quit()
