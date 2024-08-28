extends Control

func game_finished(winner_index: String) -> void:
	#Wait a small amount of time
	$WinScreen.show()
	$WinScreen/VictoryText.text = "PLAYER " + winner_index + " VICTORY"
	get_tree().paused = true #Makes everything stop.
