extends AudioStreamPlayer

@onready var music = $"."

func _ready():
	if not music.playing:
		music.play()

func play_music():
	if not music.playing:
		music.play()

func stop_music():
	music.stop()
