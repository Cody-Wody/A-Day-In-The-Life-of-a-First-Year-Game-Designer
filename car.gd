extends Node3D

@export var speed = 200

@onready var car_body = $CSGBox3D
@onready var car_roof = $CSGPolygon3D

func _ready() -> void:
	var hue = randf_range(0,1)
	var colour = Color.from_hsv(hue, 0.5, 1)
	var mat = car_body.material.duplicate()
	mat.albedo_color = colour
	car_body.material = mat
	car_roof.material = mat

func _process(delta):
	position.z += speed * delta
