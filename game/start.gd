extends Node

func _on_pressed():
	get_tree().change_scene_to_file('res://test.tscn')

func save():
	var save_d = {
		"lifetime_wins": Score.life_wins,
		"lifetime_losses": Score.life_loss
	}
	return save_d

func save_game():
	var save_file = FileAccess.open("res://user/stats.save", FileAccess.WRITE)
	Score.life_wins += Score.wins
	Score.life_loss += Score.loss
	var data = save()
	var string = JSON.stringify(data)
	
	save_file.store_line(string)

func _on_quit():
	save_game()
	get_tree().quit()


func _on_stats():
	print(Score.wins, ", ", Score.loss)
