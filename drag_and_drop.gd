extends Sprite2D

var dragging : bool = false
var selected : bool = false
var of : Vector2 = Vector2(0,0)

@export var perfect_position : Vector2 = Vector2(0,0)
@export var position_forgiveness : Vector2 = Vector2(20,20)

@export var audio_stream_player : AudioStreamPlayer
@export var area_2d : Area2D

func _process(_delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			var parameters: PhysicsPointQueryParameters2D = PhysicsPointQueryParameters2D.new()
			parameters.position = get_global_mouse_position()
			parameters.collide_with_areas = true
			var object_clicked = get_world_2d().direct_space_state.intersect_point(parameters)
			var colliders = object_clicked.map(
				func(dict):
					return dict.collider
			)
			colliders.sort_custom(
				func(c1, c2):
					return c1.z_index < c2.z_index
			)
			if colliders[-1] == area_2d:
				dragging = true
				of = get_global_mouse_position() - global_position
				audio_stream_player.pitch_scale = 1.0
				audio_stream_player.play()
		
		elif event.pressed == false && abs(position.x - perfect_position.x) < position_forgiveness.x && abs(position.y - perfect_position.y) < position_forgiveness.y: 
			dragging = false
			position = perfect_position
			if position == perfect_position:
				if selected == false:
					Dressup.collect_clothes()
					selected = true
				if Dressup.total_clothes != Dressup.clothes_counter:
					audio_stream_player.pitch_scale = 1.3
					audio_stream_player.play()
		
		elif event.pressed == false:
			dragging = false
			#audio_stream_player.pitch_scale = 0.8
			#audio_stream_player.play()
