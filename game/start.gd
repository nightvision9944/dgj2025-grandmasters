extends Node
var scene = preload("res://stats.tscn")
func _on_pressed():
	get_tree().change_scene_to_file('res://test.tscn')

#var score_data = {}
#var config = ConfigFile.new()
#var err = config.load('user://scores.cfg')

#if err != OK:
#	return



func _on_quit():
	
	get_tree().quit()


func _on_stats():
	var instance = scene.instantiate()
	add_child(instance)
	#print(Score.wins, ", ", Score.loss)
