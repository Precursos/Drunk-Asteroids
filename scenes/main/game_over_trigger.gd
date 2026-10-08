extends Area2D


func _on_area_entered(area):
	if area.is_in_group("asteroids"):
		GameManager.set_is_game_over(true)
	
