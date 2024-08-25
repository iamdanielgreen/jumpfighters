extends Node2D

var scores: Array[int] = [0, 0]

func scored(death_player_index : int) -> void:
	scores[death_player_index - 1] += 1
	
	if death_player_index == 1:
		get_node("UI/PlayerContainers/Player2/P2Score").text = get_score_as_text(death_player_index)
	if death_player_index == 2:
		get_node("UI/PlayerContainers/Player1/P1Score").text = get_score_as_text(death_player_index)
		
		
func get_score_as_text(player_index: int) -> String:
	return str(scores[player_index - 1])
