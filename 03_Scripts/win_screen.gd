# Contains code adapated from Coding Quests "Godot 4.3 Timer + Await Tutorial" (https://www.youtube.com/watch?v=INBQAxFQBbg)

extends Control

@onready var countdown_timer: HBoxContainer = $CanvasLayer/CountdownTimer

func game_finished(winner_index: String) -> void:
	countdown_timer.stop_timer()  
	countdown_timer.queue_free()
	await get_tree().create_timer(0.25).timeout 	#Wait a small amount of time
	$WinScreen.show()
	if game_manager.current_game_mode == game_manager.game_mode.EndlessFight:
		$WinScreen/VictoryText.text = "WAS IT WORTH IT?"
	else:
		$WinScreen/VictoryText.text = "PLAYER " + winner_index + " VICTORY"
	get_tree().paused = true #Makes everything stop.
	

func _on_refight_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
	

func _on_return_menu_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://02_Scenes/menu.tscn")
