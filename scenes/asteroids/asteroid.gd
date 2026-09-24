extends Area2D

@export var min_speed: float
@export var max_speed: float
@export var min_rotation_speed: float
@export var max_rotation_speed: float

var random_speed
var random_rotation_speed

func _ready():
	random_speed = randf_range(min_speed, max_speed)
	random_rotation_speed = randf_range(min_rotation_speed, max_rotation_speed)
	

func _process(delta):
	position.x -= random_speed * delta #Se utiliza delta para que corra igual en todas las PC sin que se agregun más FPS.
	rotation_degrees += random_rotation_speed * delta #aplicando la rotación
	
	
	


func _on_area_entered(area):
	if area.is_in_group("laser") or area.is_in_group("player"):
		queue_free()
