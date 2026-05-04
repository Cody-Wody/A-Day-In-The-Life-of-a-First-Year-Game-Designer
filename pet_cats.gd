extends Node2D
class_name CatFoodGame

var food_counter = 0
var total_food = 3

func collect_food():
	food_counter += 1
	if food_counter == total_food:
		win_cat_game()

func win_cat_game():
		SelectSfx.play()
		await SelectSfx.finished
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		get_tree().change_scene_to_file("res://runbus.tscn")
		pass

func _on_charlie_button_button_down() -> void:
	print(food_counter)
	CatMeow.pitch_scale = 1.0
	CatMeow.play()

func _on_oscar_button_button_down() -> void:
	CatMeow.pitch_scale = 1.1
	CatMeow.play()

func _on_nala_button_button_down() -> void:
	CatMeow.pitch_scale = 1.3
	CatMeow.play()
