extends KinematicBody2D

var speed = 500;
onready var spr_player = $Sprite

func _ready():
	pass;

func _physics_process(delta):
	
	var dir = Vector2();
	if Input.is_key_pressed(KEY_A):
		spr_player.flip_h = true
		dir.x += -speed;
		$CollisionShape2D.position.x = -25.1
		pass
		
	if Input.is_key_pressed(KEY_D):
		spr_player.flip_h = false
		dir.x = speed;
		$CollisionShape2D.position.x = 22.8
	
	if self.position.x <= 59:
		self.position.x = 59
		
	if self.position.x >= 454:
		self.position.x = 454
	move_and_slide(dir)
