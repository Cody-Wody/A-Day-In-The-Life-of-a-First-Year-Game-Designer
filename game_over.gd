extends CanvasLayer

func _ready():
	visible = false

func _on_try_again_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	visible = false
	get_tree().change_scene_to_file("res://dressup.tscn")
	pass

func _on_main_menu_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	visible = false
	get_tree().change_scene_to_file("res://mainmenu.tscn")
	pass
