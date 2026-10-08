extends Area2D




func _on_area_entered(area):
	if area.is_in_group("player"):
		var asteroids = get_tree().get_nodes_in_group("asteroids")
		
		for asteroid in asteroids:
			asteroid.destroy()
		
		queue_free()
