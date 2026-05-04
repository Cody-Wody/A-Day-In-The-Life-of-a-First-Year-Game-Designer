extends Node2D

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	Dressup.clothes_counter = 0
	Bedroom.item_counter = 0
	PetCats.food_counter = 0
	CarSpawner.car_spawn = true
	EnemySpawner.has_spawned = false
	TimerUi.stop_timer()
	TimerUi.reset_timer()

func _on_play_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://IntroScene1.tscn")
	TimerUi.max_time = 180

func _on_play_button_2_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://IntroScene6.tscn")
	TimerUi.max_time = 60

func _on_credits_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://credits.tscn")
