extends KinematicBody2D

const UP = Vector2(0, -1)
var move = Vector2()

export var speedX = 200
export var jumpForce = 250
export var gravity = 160

func _process(delta):
	move.y += gravity * delta
	$AnimatedSprite.playing = true
	
	if Input.is_action_pressed("ui_left"):
		move.x = -speedX
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_h = true
		
	elif Input.is_action_pressed("ui_right"):
		move.x = speedX
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_h = false
		
	else:
		$AnimatedSprite.animation = "idle"
		move.x = 0
		
	if is_on_floor():
		move.y = 30
		if Input.is_action_pressed("ui_accept"):
			move.y = -jumpForce
	
	move_and_slide(move, UP)