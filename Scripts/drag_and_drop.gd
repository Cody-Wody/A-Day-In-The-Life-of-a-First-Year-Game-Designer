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
			var parameters := PhysicsPointQueryParameters2D.new()
			parameters.position = get_global_mouse_position()
			parameters.collide_with_areas = true
			
			var result = get_world_2d().direct_space_state.intersect_point(parameters)
			var colliders = result.map(func(dict): return dict.collider)
			
			if colliders.size() > 0:
				colliders.sort_custom(func(c1, c2): return c1.z_index < c2.z_index)
				
				if colliders[-1] == area_2d:
					dragging = true
					of = get_global_mouse_position() - global_position
					audio_stream_player.pitch_scale = 1.0
					audio_stream_player.play()
		
		else:
			dragging = false
			
			var close_enough = abs(position.x - perfect_position.x) < position_forgiveness.x \
			and abs(position.y - perfect_position.y) < position_forgiveness.y
			
			if close_enough:
				position = perfect_position
				
				if not selected:
					Dressup.collect_clothes()
					selected = true
					
					if Dressup.clothes_counter != Dressup.total_clothes:
						audio_stream_player.pitch_scale = 1.3
					
					audio_stream_player.play()
