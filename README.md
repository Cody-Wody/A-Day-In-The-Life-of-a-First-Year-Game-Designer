# ******A Day In The Life of a First Year Game Designer******

Student Name: Cody McCreedy  
Student Number: A00037984  
Class Group: TU984  

## ****Gameplay Video****

https://youtu.be/ZNiCKFWB95s?si=mw0x24NZomuqVKL3

## ****Screenshots****

### Main Menu
<img width="1920" height="1080" alt="Screenshot (26)" src="https://github.com/user-attachments/assets/fc95e4fd-7f72-40d6-afb6-2dcf0cf5671d" />

### Intro Sequence
<img width="1920" height="1080" alt="Screenshot (27)" src="https://github.com/user-attachments/assets/73c197dc-9443-4b01-93d6-f9a08c6effcf" />

<img width="1920" height="1080" alt="Screenshot (28)" src="https://github.com/user-attachments/assets/fc3f8b65-83ce-4684-a7cc-2b5c02971a77" />

### Dress-Up Minigame
<img width="1920" height="1080" alt="Screenshot (30)" src="https://github.com/user-attachments/assets/b1198feb-e847-4cd9-8594-558d0f936a91" />

### Collect-Items Minigame
<img width="1920" height="1080" alt="Screenshot (31)" src="https://github.com/user-attachments/assets/9a859ffb-3048-45ca-a62c-86a4cf6db0b1" />

### Feed-Cats Minigame
<img width="1920" height="1080" alt="Screenshot (32)" src="https://github.com/user-attachments/assets/872ad006-bd27-4076-80ea-5bcc1dee3396" />

### Run-for-the-Bus Minigame
<img width="1920" height="1080" alt="Screenshot (34)" src="https://github.com/user-attachments/assets/bcebebd0-2678-4b18-aba7-7694af36c3d5" />

<img width="1920" height="1080" alt="Screenshot (38)" src="https://github.com/user-attachments/assets/b998fde2-3fd1-40fd-9d16-e7ce600d18bb" />

<img width="1920" height="1080" alt="Screenshot (39)" src="https://github.com/user-attachments/assets/38029f32-4f70-40cb-8c86-1cbfed0acbed" />

### Game Over Screen
<img width="1920" height="1080" alt="Screenshot (35)" src="https://github.com/user-attachments/assets/cdbd77cf-121f-4bf5-af5d-45a39ce4d340" />

### Credits Screen
<img width="1920" height="1080" alt="Screenshot (37)" src="https://github.com/user-attachments/assets/6716890b-9a62-4cb5-a9db-f68b02643637" />

## ****Project Description****
This game was created for my Computational Arts End of Semester Assignment 2026. In this game the player controls Cody, a college student who wakes up 3 minutes before his bus arrives. The player must complete a handful of Cody's morning tasks and run for the bus in order to make it to college on time. This is a fast-paced, time-attack game where players must complete a series of short minigames before the clock runs out, with a bit of inspiration taken from ***WarioWare***.


## ****Instructions for Use****
This game should be played on (ITCH LINK HERE). Move the mouse and Left Click to Drag, Drop, and Collect items in the 2D Scenes. Move the mouse to look around and use WASD to move in the 3D Scene.

## ****How the Game Works****
***A Day in the Life of a First Year Game Designer*** uses **Global Time Pressure**, **Rapid Task-Switching**, **Multi-Modal Gameplay (2D Precision & 3D Navigation)**, **Procedural Obstacles**, and **High-Risk, High-Reward Decision Making** to create a fast paced, chaotic challenge.

### **Core Loop**
-  Start minigame
-  Complete task
-  Next minigame
-  Catch bus under 3 minutes (or 1 minute in **60 Second Rush**)

### **Minigame Feedback Loops**
#### Minigame 1 - Dress-Up
-  Click clothing
-  Drag onto Cody
-  Repeat x4
  
#### Minigame 2 - Collect-Items
-  Click item
-  Repeat x4

#### Minigame 3 - Feed-Cats
-  Click catfood sachet
-  Drag onto bowl
-  Repeat x3

#### Minigame 4 - Run-for-the-Bus
-  Observe the area and the obstacle(s)
-  Identify a viable path forward
-  Avoid time loss from **Cars** (Push Back) and the **Chicken** (Game Over) 
-  Get on the bus

## ****List of Classes/Assets****
| Class/Asset        | Source          | Use  |
| ------------- |:-------------:| -----:|
| mainmenu.gd     | Self Written | Resets the game's scores, timer, and connects play and credits buttons to their respective scenes. |
| button.gd     | Self Written | Sets the tween on all buttons, making them scale and disappear. |
| dressup.gd     | Self Written | Controls the dress-up minigame and sends the player to the next scene. |
| drag_and_drop.gd     | Self Written | Makes items able to be picked up and dropped. |
| bedroom.gd     | Self Written | Controls the collect-items minigame and sends the player to the next scene. |
| item.gd     | Self Written | Sets the tween on all items, and makes them disappear. |
| pet_cats.gd     | Self Written | Controls the feed-cats minigame, plays the cats' meows, and sends the player to the next scene. |
| catbowl.gd     | Self Written | Fills the cat bowls when the cat food is put on them. |
| cat_food.gd     | Self Written | Fills the cat bowls when dragged onto them. |
| runbus.gd     | Self Written | Makes the scene end and transition to the main menu 3 seconds after entering the bus. |
| player.gd     | Self Written | Player controller. |
| car_spawner.gd     | Self Written | Spawns car scenes within a certain area, and deactivates when the player gets close enough to it. |
| car.gd     | Self Written | Makes cars move at a constant speed along the z-axis and gives the cars random colours. |
| car_crashed.gd     | Self Written | Gives the cars random colours. |
| enemy_spawner.gd     | Self Written | Spawns the enemy once the player enters an Area3d. |
| enemy.gd     | Self Written | Makes the enemy fall and start following the player after the cutscene, trying to eliminate the player in an Area3D (hitbox). |
| cutscene_controller.gd     | Self Written | Causes and controls the cutscene once the player enters an Area3D. |
| bus.gd     | Self Written | Makes the bus move along the x axis and moves the player's camera once they enter its Area3D. |
| credits.gd   | Self Written | Brings player back to the main menu when the screen is clicked. |
| intro1.gd     | Self Written | Click to go to the next sequence. |
| intro2.gd     | Self Written | Click to go to the next sequence. |
| intro3.gd     | Self Written | Click to go to the next sequence. |
| intro4.gd     | Self Written | Click to go to the next sequence. |
| intro5.gd     | Self Written | Click to go to the next sequence. |
| intro6.gd     | Self Written | Click to go to the next sequence and start the timer. |
| music.gd   | Self Written | Plays the background music globally. |
| timer_ui.gd   | Self Written | Controls the timer through global functions called by other scripts and tweens. |
| game_over.gd   | Self Written | Resets the game's scores, timer, and connects try again and menu buttons to their respective scenes. |
| transition_screen.gd   | Self Written | Controls the transition screen between scenes through global functions called by other scripts. |
| chicken.tlgf   | Self Made (Blockbench) | Model made for the chicken enemy. |

All art assets across the game were all self-made in Photoshop.

## ****What I Am Most Proud of in This Assignment****
I would say there's not a single part of this assignment I am not part of. This is my first ever big game project, and I am so happy with how it came out. I was able to combine these mechanics, art, and gameplay loops together to create a fun and enjoyable experience for all players, with a 3 minute long story mode for casual players and a one minute mode for players looking for a challenge.

## ****What Did I Learn?****
In this assignment, I learned how to use containers for UI and make objects able to be dragged and dropped in the 2D scenes, and instantiate scenes through triggers and procedural generation through the cars, chicken, and cutscenes in the 3D scene.

## ****Code Examples****
### mainmenu.gd
````
extends Node2D

func _ready() -> void:
	Music.play_music()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	Dressup.clothes_counter = 0
	Bedroom.item_counter = 0
	PetCats.food_counter = 0
	CarSpawner.car_spawn = true
	EnemySpawner.has_spawned = false
	TimerUi.stop_timer()
	TimerUi.reset_timer()

func _on_play_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://IntroScene1.tscn")
	TimerUi.max_time = 180

func _on_play_button_2_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://IntroScene6.tscn")
	TimerUi.max_time = 60

func _on_credits_button_pressed() -> void:
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://credits.tscn")
````
### dressup.gd
````
extends Node2D

var clothes_counter = 0
var total_clothes = 4

func collect_clothes():
	clothes_counter += 1
	if clothes_counter == total_clothes:
		win_dressup_game()

func win_dressup_game():
	SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	get_tree().change_scene_to_file("res://bedroom.tscn")

````
### drag_and_drop.gd
````
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
````
### bedroom.gd
````
extends Node2D

var item_counter = 0
var total_items = 4

func collect_item():
	item_counter += 1
	if item_counter == total_items:
		win_game()

func _on_button_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_2_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_3_pressed() -> void:
	SelectSfx.play()
	collect_item()

func _on_button_4_pressed() -> void:
	SelectSfx.play()
	collect_item()

func win_game():
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		get_tree().change_scene_to_file("res://pet_cats.tscn")
		pass
````
### item.gd
````
extends TextureButton

@export var hover_scale: Vector2 = Vector2(1.1, 1.1)
@export var pressed_scale: Vector2 = Vector2(0.9, 0.9)

func _ready() -> void:
	mouse_entered.connect(_button_enter)
	mouse_exited.connect(_button_exit)
	pressed.connect(_button_pressed)
	
	call_deferred("_init_pivot")

func _init_pivot() -> void:
	pivot_offset = size/2.0

func _button_enter() -> void:
	create_tween().tween_property(self, "scale", hover_scale, 0.1).set_trans(Tween.TRANS_SINE)

func _button_exit() -> void:
	create_tween().tween_property(self, "scale", Vector2.ONE, 0.1).set_trans(Tween.TRANS_SINE)

func _button_pressed() -> void:
	var button_press_tween: Tween = create_tween()
	button_press_tween.tween_property(self, "scale", pressed_scale, 0.06).set_trans(Tween.TRANS_SINE)
	button_press_tween.tween_property(self, "scale", hover_scale, 0.12).set_trans(Tween.TRANS_SINE)
	button_press_tween.tween_property(self, "modulate:a", 0, 0.25)
	button_press_tween.tween_callback(queue_free)
````
### catbowl.gd
````
extends AnimatedSprite2D
class_name CatBowl

var is_full : bool = false

@export var perfect_position : Vector2 = Vector2(0,0)
@export var position_forgiveness : Vector2 = Vector2(20,20)

@export var audio_stream_player : AudioStreamPlayer
@export var area_2d : Area2D

func _ready() -> void:
	frame = 0
	area_2d.visible = true

func fill_bowl():
	if is_full: 
		return
	
	frame = 1
	if get_parent() is CatFoodGame:
		get_parent().collect_food()
	area_2d.visible = false
	SelectSfx.play()
	queue_free()
````
### cat_food.gd
````
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
````
### car_spawner.gd
````
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
````
### cutscene_controller.gd
````
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
````
### bus.gd
````
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
````
### timer_ui.gd
````
extends CanvasLayer

var time_left := 60.0
var running := false
var triggered := false
var max_time := 60.0

@onready var clock = $Label

func start_timer():
	time_left = max_time
	running = true
	triggered = false
	
	Music.pitch_scale = 1.3
	clock.position.y = -100
	
	update_clock_display()
	
	var tween = create_tween()
	tween.tween_property(clock, "position:y", 20, 0.6)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_OUT)

func pause_timer():
	running = false

func stop_timer():
	running = false
	Music.pitch_scale = 1.0
	clock.position.y = 20
	
	var tween = create_tween()
	tween.tween_property(clock, "position:y", -100, 0.6)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_OUT)

func reset_timer():
	time_left = max_time
	triggered = false
	update_clock_display()

func _process(delta):
	if not running:
		return
	
	time_left -= delta
	time_left = max(time_left, 0)
	
	update_clock_display()
	
	if not triggered and time_left <= 0:
		triggered = true
		trigger_game_over()

func update_clock_display():
	var minutes = int(time_left / 60) % 60
	var seconds = int(time_left) % 60
	var milliseconds = int((time_left - int(time_left)) * 100)
	
	clock.text = "%02d:%02d:%02d" % [
		minutes, seconds, milliseconds
	]

func trigger_game_over():
	#SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	GameOver.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
````
### transition_screen.gd
````
extends CanvasLayer

signal on_transition_finished

@onready var color_rect = $ColorRect
@onready var animation_player = $AnimationPlayer

func _ready() -> void:
	color_rect.visible = false
	animation_player.animation_finished.connect(_on_animation_finished)
	
func _on_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		on_transition_finished.emit()
		animation_player.play("fade_to_normal")
	elif anim_name == "fade_to_normal":
		color_rect.visible = false
	
func transition() -> void:
	color_rect.visible = true
	animation_player.play("fade_to_black")
````
