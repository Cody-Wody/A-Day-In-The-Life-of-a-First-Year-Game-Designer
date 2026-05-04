extends Node2D

var item_counter = 0
var total_items = 4

func collect_item():
	item_counter += 1
	if item_counter == total_items:
		win_game()

func _on_button_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_2_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_3_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_4_pressed() -> void:
	SelectSfx.play()
	collect_item()

func win_game():
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		get_tree().change_scene_to_file("res://pet_cats.tscn")
		pass
