extends Node2D

var clothes_counter = 0
var total_clothes = 4

func collect_clothes():
	clothes_counter += 1
	if clothes_counter == total_clothes:
		win_dressup_game()

func win_dressup_game():
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://bedroom.tscn")
