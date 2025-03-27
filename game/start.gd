extends Node

func _on_pressed():
	get_tree().change_scene_to_file('res://main_game.tscn')


func _on_quit():
	get_tree().quit()
