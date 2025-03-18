extends Node

var rng=RandomNumberGenerator.new()
func _ready():
	var rock = 0
	var paper = 1
	var scissors = 2
	var my_random_number = rng.randi_range(0, 2)
	
	
	
