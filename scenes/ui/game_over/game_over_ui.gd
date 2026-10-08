extends Control

@onready var final_score_label: Label = %FinalScoreLabel

func _process(delta):
	if GameManager.is_game_over:
		visible = true
		final_score_label.text = "Your score: "  + str(GameManager.score)
