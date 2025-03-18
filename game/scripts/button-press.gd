extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	var sel = false
	button.text = ""
	button.pressed.connect(_button_pressed)
	add_child(button)

func _button_pressed():
	var sel = true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

