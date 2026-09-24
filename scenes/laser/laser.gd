extends Area2D

@export var speed: float 

func _process(delta):
	position.x += speed * delta


func _on_area_entered(area):
	if area.is_in_group("asteroids"):
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
