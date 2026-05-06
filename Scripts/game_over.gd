extends CanvasLayer

func _ready():
	visible = false

func reset_game():
	Dressup.clothes_counter = 0
	Bedroom.item_counter = 0
	PetCats.food_counter = 0
	CarSpawner.car_spawn = true
	EnemySpawner.has_spawned = false
	TimerUi.reset_timer()
	TimerUi.pause_timer()

func _on_try_again_button_pressed() -> void:
	SelectSfx.play()
	reset_game()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	visible = false
	get_tree().change_scene_to_file("res://dressup.tscn")
	TimerUi.start_timer()
	pass

func _on_main_menu_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	visible = false
	get_tree().change_scene_to_file("res://mainmenu.tscn")
	pass
