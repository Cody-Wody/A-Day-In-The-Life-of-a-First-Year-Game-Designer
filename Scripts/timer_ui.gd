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
