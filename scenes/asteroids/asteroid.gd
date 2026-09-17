extends Area2D

@export var speed: float


func _process(delta):
	position.x -= speed * delta #Se utiliza delta para que corra igual en todas las PC sin que se agregun más FPS.
	
