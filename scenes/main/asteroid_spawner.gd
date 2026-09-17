extends Marker2D

@export var big_asteroid_scene: PackedScene # <-- Es el lugar donde se guarda la escena

func create_asteroid():
	var big_asteroid_instance = big_asteroid_scene.instantiate()
	add_child(big_asteroid_instance)


func _on_timer_timeout():
	create_asteroid()
