extends Node3D

@export var car_scene: PackedScene
@export var speed = 20
@export var road_width = 6
@export var spawn_z = 50
@export var player: Node3D
@export var stop_distance = 15

var car_spawn = true

func _ready():
	randomize()

func spawn_car():
	if player:
		var distance = global_transform.origin.distance_to(player.global_transform.origin)
		if distance < stop_distance:
			car_spawn = false
	
	var car = car_scene.instantiate()

	var random_x = randf_range(-road_width / 2.0, road_width / 2.0)
	car.position = Vector3(random_x, 0, spawn_z)

	add_child(car)

func _on_timer_timeout() -> void:
	if car_spawn == true:
		spawn_car()

func cars_stop():
	queue_free()
