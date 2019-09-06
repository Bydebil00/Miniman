extends KinematicBody2D

const UP = Vector2(0, -1)
var move = Vector2()

export var speedX = 100
export var jumpForce = 200
export var gravity = 200

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

	if Input.is_action_pressed("ui_accept"):
		move.y = -jumpForce

	
	move_and_slide(move, UP)