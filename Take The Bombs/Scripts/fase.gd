extends Node2D

var pre_bomba = preload("res://Scenes/bomb.tscn")
onready var pre_bombatest = $bomb
var tempo = 0

export var pontos = 0

onready var label = $label

func _process(delta):
	label.text = "Score: " + str(pontos)
	tempo+=delta
	if tempo > rand_range(1.3,2):
		criarBomba()
		tempo = 0

func criarBomba():
	var bomba = pre_bomba.instance()
	bomba.position = Vector2(rand_range(30,520),0)
	self.add_child(bomba)
