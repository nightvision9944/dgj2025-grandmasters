extends Control

@onready var display_sprite = $DisplaySprite

# Load textures
var rock_texture = preload("res://assets/rock.png")
var paper_texture = preload("res://assets/paper.png")
var scissors_texture = preload("res://assets/scissors.png")

func _ready():
	# Assign button text and connect signals
	$RockButton.text = "🪨"
	$RockButton.pressed.connect(on_rock_pressed)

	$PaperButton.text = "📝"
	$PaperButton.pressed.connect(on_paper_pressed)

	$ScissorsButton.text = "✂️"
	$ScissorsButton.pressed.connect(on_scissors_pressed)

func on_rock_pressed():
	display_sprite.texture = rock_texture

func on_paper_pressed():
	display_sprite.texture = paper_texture

func on_scissors_pressed():
	display_sprite.texture = scissors_texture
