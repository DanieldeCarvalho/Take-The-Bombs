extends Area2D

var vel = 5

func _ready():
	pass

func _physics_process(delta):
	vel += 0.1
	self.position.y += vel
	if self.position.y >700:
		self.queue_free()
	pass


func _on_bomb_body_entered(body):
	if body.name == "player":
		queue_free()
		get_parent().pontos += 1
	pass


func _on_bomb_area_entered(area):
	if area.name == "floor":
		queue_free()
		get_parent().pontos -= 2
	pass # Replace with function body.
