extends Button
@export var ButtonType: int = 0

func _ready():
	var button = $rock
	if ButtonType == 0:
		text = "🪨"
	elif ButtonType == 1:
		text = "📝"
	elif ButtonType == 2:
		text = "✂️"

