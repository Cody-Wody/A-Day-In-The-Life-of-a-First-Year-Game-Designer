extends AnimatedSprite2D
class_name CatBowl

var is_full : bool = false

@export var perfect_position : Vector2 = Vector2(0,0)
@export var position_forgiveness : Vector2 = Vector2(20,20)

@export var audio_stream_player : AudioStreamPlayer
@export var area_2d : Area2D

func _ready() -> void:
	frame = 0
	area_2d.visible = true

func fill_bowl():
	if is_full: 
		return
	
	frame = 1
	if get_parent() is CatFoodGame:
		get_parent().collect_food()
	area_2d.visible = false
	SelectSfx.play()
	queue_free()
