extends Node3D

func _on_area_3d_body_entered(body: Node3D) -> void:
	if not body.is_in_group("player"):
		return
	SelectSfx.play()
	$SceneTimer.start()

func _on_scene_timer_timeout() -> void:
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://mainmenu.tscn")
