extends CharacterBody3D

const SPEED = 10.0
const JUMP_VELOCITY = 4.5

@onready var camera = $Camera3D

var look_dir: Vector2 = Vector2.ZERO
var camera_sens = 2.0

# ✅ THIS is what the bus will control
var camera_locked: bool = false


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Movement
	var input_dir := Input.get_vector("left", "right", "up", "down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

	# Camera rotation (ONLY if not locked)
	_rotate_camera(delta)


func _input(event):
	if camera_locked:
		return

	if event is InputEventMouseMotion:
		look_dir = event.relative * 0.1

func _rotate_camera(delta: float, sens_mod: float = 1.0):
	if camera_locked:
		return

	rotation.y -= look_dir.x * camera_sens * delta

	camera.rotation.x = clamp(
		camera.rotation.x - look_dir.y * camera_sens * sens_mod * delta,
		deg_to_rad(-80),
		deg_to_rad(80)
	)

	look_dir = Vector2.ZERO
