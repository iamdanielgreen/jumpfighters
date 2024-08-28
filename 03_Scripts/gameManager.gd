extends Node2D

enum game_mode {SingleMatch, Championship, Catastrophe}

var current_game_mode: game_mode
var scores: Array[int] = [0, 0]
var current_round: int = 1

func scored(death_player_index : int) -> void:
	scores[death_player_index - 1] += 1
	
	if death_player_index == 1:
		get_node("UI/PlayerContainers/Player2/P2Score").text = get_score_as_text(death_player_index)
	if death_player_index == 2:
		get_node("UI/PlayerContainers/Player1/P1Score").text = get_score_as_text(death_player_index)
	
	var winner_index: int
	if death_player_index == 1:
		winner_index = 2
		
	if death_player_index == 2:
		winner_index = 1	
		
	if game_manager.current_game_mode == game_manager.game_mode.SingleMatch:
		$UI.game_finished(str(winner_index))
		
	current_round += 1
		
func get_score_as_text(player_index: int) -> String:
	return str(scores[player_index - 1])
	
