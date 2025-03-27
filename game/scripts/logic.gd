extends Control
@export var ButtonType: int = 0
var score = 0
var round = 0
var rng=RandomNumberGenerator.new()
var green = preload("res://assets/green.png")
var red = preload("res://assets/red.png")

func _ready():
	$score.text = ""
	
func _button_pressed(ButtonType):
	if round == 3:
		print(score)
		if score > 0:
			$Light2.texture = green
			$Light3.texture = green
			$score.text = "You win! :)"
			Score.wins += 1
		else:
			$Light.texture = red
			$Light2.texture = red
			$score.text = "You lose! :("
			Score.loss += 1
		get_tree().create_timer(3.0)
		await get_tree().create_timer(3.0).timeout
		get_tree().change_scene_to_file('res://menu.tscn')
	
	var i = rng.randi_range(0, 2)
	$score.text = ''
	if ButtonType == i:
		score += 0
		$score.text = "You tied!"
	elif (ButtonType == 0 and i == 2) or (ButtonType == 1 and i == 0) or (ButtonType == 2 and i == 1):
		score += 1
		$Light.texture = green
		round += 1
	else:
		score -= 1
		$Light3.texture = red
		round += 1



func _on_rock_pressed():
	_button_pressed($rock.ButtonType)


func _on_paper_pressed():
	_button_pressed($paper.ButtonType)


func _on_scissors_pressed():
	_button_pressed($scissors.ButtonType)
