extends Control
@export var ButtonType: int = 0
var score = 0
var rng=RandomNumberGenerator.new()

func _ready():
	$score.text = "Score: " + str(score)
func _button_pressed():
	var i = rng.randi_range(0, 2)
	if ButtonType == i:
		score += 0
	elif (ButtonType == 0 and i == 2) or (ButtonType == 1 and i == 0) or (ButtonType == 2 and i == 1):
		score += 1
	else:
		score -= 1
	$score.text = "Score: " + str(score)
