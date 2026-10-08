extends Node

var score = 0
var is_game_over = false

func _process(delta):
	if is_game_over and Input.is_action_just_pressed("shoot"):
		restart_game()
		
func restart_game():
	get_tree().reload_current_scene()
	is_game_over = false
	score = 0

func add_score(points):
	if is_game_over:
		return
	score += points
	
		

#Esto es un métdo setter "setea" el valor de una variable
func set_is_game_over(value):
	is_game_over = value
	
