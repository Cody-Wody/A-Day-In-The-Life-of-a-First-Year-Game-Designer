extends Node3D

@export var enemy_scene: PackedScene
@onready var area = get_node_or_null("Area3D")

func _ready():
	if area == null:
		push_error("Area3D not found in EnemySpawner!")
		return

	area.body_entered.connect(_on_body_entered)

var has_spawned = false

func _on_body_entered(body):
	if has_spawned:
		return
	if body.name != "Player":
		return
	if has_spawned == false:
		spawn_enemy()

func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	get_tree().current_scene.add_child(enemy)
	enemy.global_position = global_position
	# IMPORTANT: assign player here
	enemy.player = get_tree().get_first_node_in_group("player")
	has_spawned = true
