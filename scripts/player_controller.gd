extends KinematicBody2D

export var MOVE_SPEED = 3

func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		#move_local_y(-MOVE_SPEED)
		move_and_collide(Vector2(0, -MOVE_SPEED))
	if Input.is_action_pressed("ui_down"):
		#move_local_y(MOVE_SPEED)
		move_and_collide(Vector2(0, MOVE_SPEED))
	if Input.is_action_pressed("ui_left"):
		#move_local_x(-MOVE_SPEED)
		move_and_collide(Vector2(-MOVE_SPEED, 0))
	if Input.is_action_pressed("ui_right"):
		#move_local_x(MOVE_SPEED)
		move_and_collide(Vector2(MOVE_SPEED, 0))