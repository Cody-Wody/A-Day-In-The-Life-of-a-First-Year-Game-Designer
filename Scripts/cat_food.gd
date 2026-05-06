extends Sprite2D

var selected := false
var of := Vector2.ZERO

@export var area_2d : Area2D
@export var area_hitbox: CollisionShape2D
var dragging: bool = false

func _process(_delta: float) -> void:
	if dragging:
		position = get_global_mouse_position()

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
		
		elif event.pressed == false:
			dragging = false
			on_mouse_up()

func on_mouse_up():
	if area_2d == null:
		return
	
	for n in area_2d.get_overlapping_areas():
		var p = n.get_parent()
		if p is CatBowl:
			p.fill_bowl()
