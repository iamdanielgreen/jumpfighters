extends Control


func _on_options_button_pressed() -> void:
	$"1".hide()
	$"2".show()

func _on_come_back_button_pressed() -> void:
	$"1".show()
	$"2".hide()
	

func _on_single_match_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.SingleMatch
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")


func _on_catastrophe_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.Championship
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")
