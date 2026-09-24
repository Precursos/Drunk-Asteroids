extends CharacterBody2D

@export var laser_scene: PackedScene
@export var speed: float

func _physics_process(delta):
	#Se toman los inputs (pulsasión del botón)
	if Input.is_action_just_pressed("shoot"):
		create_laser()
	
	var y_input = Input.get_axis("move_up", "move_down")
	var x_input = Input.get_axis("move_left", "move_right")
	
	#Traduce la toma del input a movimiento se tiene que multiplicar por speed para que se mueva
	velocity = Vector2(x_input, y_input) * speed	
	move_and_slide()

func create_laser():
	var laser_instance = laser_scene.instantiate()
	add_sibling(laser_instance)
	laser_instance.position = position


func _on_detection_area_area_entered(area):
	if area.is_in_group("asteroids"):
		queue_free()
