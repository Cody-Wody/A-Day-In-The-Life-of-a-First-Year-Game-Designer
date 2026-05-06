extends Node3D

@onready var area: Area3D = $Area3D
@onready var player: Node3D = $"../Player"
@onready var player_camera: Camera3D = $"../Player/Camera3D"
@onready var cutscene_camera: Camera3D = $Camera3D
@onready var target_point: Marker3D = $Marker3D

var player_start_transform: Transform3D
var tween: Tween
var cutscene_played = false

func _ready():
	area.body_entered.connect(_on_body_entered)
	cutscene_camera.current = false

func _on_body_entered(body):
	if body != player:
		return
	if cutscene_played == true:
		return
	start_cutscene()

func start_cutscene():
	# Save player camera position
	player_start_transform = player_camera.global_transform

	# Switch to cutscene camera
	player_camera.current = false
	cutscene_camera.current = true

	# Start from player view
	cutscene_camera.global_transform = player_start_transform

	# Optional: stop player movement
	player.set_process(false)
	player.set_physics_process(false)
	player.set_process_input(false)

	tween = create_tween()

	# Move to cutscene point
	tween.tween_property(
		cutscene_camera,
		"global_transform",
		target_point.global_transform,
		1.5
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

	# Pause briefly at target (optional)
	tween.tween_interval(1)

	# Return to player view
	tween.tween_property(
		cutscene_camera,
		"global_transform",
		player_start_transform,
		1.0
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

	tween.finished.connect(end_cutscene)

func end_cutscene():
	cutscene_camera.current = false
	player_camera.current = true

	player.set_process(true)
	player.set_physics_process(true)
	player.set_process_input(true)
	
	cutscene_played = true
