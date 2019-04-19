extends Area2D

var door_code = 0

func _ready():
	pass

#func _input(event):
#	if event.is_action_pressed("interact"):
#		game_manager.enter_building(door_code)


func _on_top_left_body_entered( body ):
	print("Top Left Entered")
	game_manager.enter_building(0)


func _on_top_right_body_entered( body ):
	print("Top Right Entered")
	game_manager.enter_building(1)


func _on_bottom_left_body_entered( body ):
	print("Bottom Left Entered")
	game_manager.enter_building(2)
