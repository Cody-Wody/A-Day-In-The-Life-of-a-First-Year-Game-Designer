extends CanvasLayer

var time_passed := 0.0
var running := false
var triggered := false
var max_time = 60

@onready var clock = $Label

func start_timer():
	running = true
	
	clock.position.y = -100
	
	var tween = create_tween()
	tween.tween_property(clock, "position:y", 20, 0.6)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_OUT)

func pause_timer():
	running = false

func stop_timer():
	running = false
	
	clock.position.y = 20
	
	var tween = create_tween()
	tween.tween_property(clock, "position:y", -100, 0.6)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_OUT)

func reset_timer():
	time_passed = 0.0

func _process(delta):
	if not running:
		return

	time_passed += delta

	var minutes = int(time_passed / 60) % 60
	var seconds = int(time_passed) % 60
	var milliseconds = int((time_passed - int(time_passed)) * 100)

	clock.text = "%02d:%02d:%02d" % [
		minutes, seconds, milliseconds
	]

	if not triggered and time_passed >= max_time:
		triggered = true
		trigger_game_over()

func trigger_game_over():
	#SelectSfx.play()
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	GameOver.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
