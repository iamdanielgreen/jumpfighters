extends Control

func _on_options_button_pressed() -> void:
	$"1".hide()
	$"3".show()

func _on_back_button_pressed() -> void:
	$"1".show()
	$"3".hide()
	
func _on_quick_fight_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.QuickFight
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")

func _on_fight_fight_button_pressed() -> void:
	$"1".hide()
	$"2".show()
	
func _on_fight_fight_back_button_pressed() -> void:
	$"2".hide()
	$"1".show()
	
func _on_three_rounds_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.FightFight3
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")
	
func _on_five_rounds_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.FightFight5
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")
	
func _on_endless_fight_button_pressed() -> void:
	game_manager.current_game_mode = game_manager.game_mode.EndlessFight
	get_tree().change_scene_to_file("res://02_Scenes/game.tscn")
