extends Node

var speed = 200
var xvel = 0
var yvel = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D.position.y += yvel * delta
	$Sprite2D.position.x += xvel * delta

func _input(event):
	if event.is_action_pressed("ui_up"):
		self.yvel -= self.speed 
	elif event.is_action_pressed("ui_down"):
		self.yvel += self.speed 
	elif event.is_action_pressed("ui_left"):
		self.xvel -= self.speed
	elif event.is_action_pressed("ui_right"):
		self.xvel += self.speed
	elif event.is_action_pressed("ui_select"):
		lasso()
		
func lasso():
	print("yeehaw")
		
