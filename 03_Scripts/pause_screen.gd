extends ColorRect

@onready var pause_screen: ColorRect = $"."
@onready var resume_fight_button: Button = $PauseScreenButtons/ResumeFightButton

var paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		resume_fight_button.grab_focus()

func pauseMenu():
	if paused:
		pause_screen.hide()
		get_tree().paused = false
		#Engine.time_scale = 1
	else:
		pause_screen.show()
		get_tree().paused = true
		#Engine.time_scale = 0
		
	paused = !paused # TODO What exactly is happening here?


func _on_resume_fight_button_pressed() -> void:
	pauseMenu()
