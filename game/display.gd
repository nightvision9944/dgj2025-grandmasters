extends Node

func _ready():
	$Window/local_wins.text = "Wins on this session: " + str(Score.wins)
	$Window/local_loss.text = "Losses on this session: " + str(Score.loss)



func _on_window_close_requested():
	queue_free()
