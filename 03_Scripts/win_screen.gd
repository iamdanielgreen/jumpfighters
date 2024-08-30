extends Control

func game_finished(winner_index: String) -> void:
	#Wait a small amount of time
	$WinScreen.show()

	$WinScreen/VictoryText.text = "PLAYER " + winner_index + " VICTORY"
	get_tree().paused = true #Makes everything stop.



func _on_rematch_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
	



func _on_return_menu_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://02_Scenes/menu.tscn")
