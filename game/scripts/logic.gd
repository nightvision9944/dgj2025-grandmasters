extends Node
@export var ButtonType: int = 0

func _ready():
	var button = Button.new()
	if ButtonType == 0:
		button.text = "🪨"
	elif ButtonType == 1:
		button.text = "📝"
	else:
		button.text = "✂️"
	button.pressed.connect(_button_pressed)
	add_child(button)

func _button_pressed():
	return ButtonType
	
