# Includes code adapted from tutorials by Marco Paoletta (Zenva link) 
# and Heartbeast (https://www.youtube.com/watch?v=kjhrT6LUXI0) (If it worked, that is.)

extends Node2D

#@onready var game_start_screen: ColorRect = $GameStartScreen
#@onready var game_start_text: Label = $GameStartText
#@onready var animation_player: AnimationPlayer = $AnimationPlayer

enum game_mode {QuickFight, FightFight3, FightFight5, EndlessFight, Catastrophe}

var current_game_mode: game_mode
var scores: Array[int] = [0, 0]
var current_round: int = 1

# Function to make countdown play on game start. Currently does not work. TODO
#func game_start() -> void:
	#get_tree().paused = true
	#animation_player.play("gamestart")
	#get_tree().paused = false
	

		
func scored(death_player_index : int) -> void:
	scores[death_player_index - 1] += 1
	
	if death_player_index == 1:
		get_node("UI/Player2/P2Score").text = get_score_as_text(death_player_index)
	if death_player_index == 2:
		get_node("UI/Player1/P1Score").text = get_score_as_text(death_player_index)
	
	var winner_index: int
	if death_player_index == 1:
		winner_index = 2
		
	if death_player_index == 2:
		winner_index = 1	
		
	if game_manager.current_game_mode == game_manager.game_mode.QuickFight:
		$UI.game_finished(str(winner_index))
	if game_manager.current_game_mode == game_manager.game_mode.FightFight3 and (scores.has(2)): #or current_round == 4:
	#if game_manager.current_game_mode == game_manager.game_mode.FightFight3 and (current_round == 2 and scores.has(2)) or current_round == 4:
		$UI.game_finished(str(winner_index))
	if game_manager.current_game_mode == game_manager.game_mode.FightFight5 and (scores.has(3)): #or current_round == 4:
	#if game_manager.current_game_mode == game_manager.game_mode.FightFight5 and (current_round == 3 and scores.has(3)) or current_round == 6:
		$UI.game_finished(str(winner_index))
	if game_manager.current_game_mode == game_manager.game_mode.EndlessFight and (scores.has(1000)): #or current_round == 4:
	#if game_manager.current_game_mode == game_manager.game_mode.EndlessFight and (current_round == 4 and scores.has(4)) or current_round == 8:
		$UI.game_finished(str(winner_index))
	 
	current_round += 1
		
func get_score_as_text(player_index: int) -> String:
	return str(scores[player_index - 1])
	
