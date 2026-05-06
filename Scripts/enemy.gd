extends CharacterBody3D

@export var speed = 0
@export var gravity = 9.8
@export var player: Node3D

func _ready():
	start_delay()

func start_delay():
	await get_tree().create_timer(3.0).timeout
	speed = 8.0

func _physics_process(delta):
	if player == null:
		return
	
	var direction = player.global_transform.origin - global_transform.origin
	direction.y = 0
	
	if not is_on_floor():
		velocity.y -= gravity * delta
	else:
		velocity.y = 0
	
	if direction.length() > 0.1:
		direction = direction.normalized()
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)
	
	move_and_slide()
	
	var target = player.global_transform.origin
	target.y = global_transform.origin.y
	look_at(target, Vector3.UP)

func _on_hurtbox_body_entered(body: Node3D) -> void:
	if not body.is_in_group("player"):
		return
	TimerUi.trigger_game_over()
