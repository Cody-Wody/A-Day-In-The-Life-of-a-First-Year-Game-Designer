extends Node3D

@export var speed := 20.0
@export var camera_target_position := Vector3(10, 5, -20)
@export var camera_look_at := Vector3(0, 0, 0)
@onready var area: Area3D = $Area3D

var moving := false
var player: Node3D
var player_camera: Camera3D
var original_camera_parent: Node
var original_camera_transform: Transform3D

func _ready():
	area.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if not body.is_in_group("player"):
		return
	
	player = body
	player_camera = body.get_node("Camera3D")
	
	player.camera_locked = true
	
	original_camera_parent = player_camera.get_parent()
	original_camera_transform = player_camera.global_transform
	
	original_camera_parent.remove_child(player_camera)
	get_tree().current_scene.add_child(player_camera)
	
	set_fixed_camera()
	
	moving = true
	
	TimerUi.pause_timer()


func set_fixed_camera():
	var cam_transform := Transform3D()
	cam_transform.origin = camera_target_position
	cam_transform = cam_transform.looking_at(camera_look_at, Vector3.UP)
	
	player_camera.global_transform = cam_transform

func _process(delta):
	if moving:
		global_position += -global_transform.basis.z * speed * delta
