extends Node2D

var score = 0
var rng=RandomNumberGenerator.new()

func _process(delta):
	if _button_pressed: 
		var i = rng.randi_range(0, 2)
		if ButtonType == i:
			pass
		else:
			score += 1
		$score.text = "Score: " + str(score)
