extends CharacterBody2D

@export var speed: float

func _physics_process(delta):
	#Se toman los inputs (pulsasión del botón)
	var y_input = Input.get_axis("move_up", "move_down")
	var x_input = Input.get_axis("move_left", "move_right")
	
	#Traduce la toma del input a movimiento se tiene que multiplicar por speed para que se mueva
	velocity = Vector2(x_input, y_input) * speed	
	move_and_slide()
