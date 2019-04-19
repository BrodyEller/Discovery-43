extends KinematicBody2D

export var MOVE_SPEED = 3
export var SCALE = 1

func _ready():
	set_process(true)
	set_process_input(true)

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
		
func _input(event):
	if event.is_action_pressed("ui_left"):
		#set_scale(Vector2(-SCALE, SCALE))
		get_node("player_sprite").set_flip_h(true)
	elif event.is_action_pressed("ui_right"):
		#set_scale(Vector2(SCALE, SCALE))
		get_node("player_sprite").set_flip_h(false)
	
	if event.is_action_pressed("interact"):
		if get_tree().current_scene.name == "outdoors":
			get_tree().change_scene("res://scenes/indoors.tscn")
		elif get_tree().current_scene.name == "indoors":
			get_tree().change_scene("res://scenes/outdoors.tscn")