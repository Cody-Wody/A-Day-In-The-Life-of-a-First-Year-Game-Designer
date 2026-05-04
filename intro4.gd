extends Sprite2D

func _input(event):
	if event.is_action_pressed("click"):
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		get_tree().change_scene_to_file("res://IntroScene5.tscn")
		pass
