extends Node2D

func _ready():
	#print("Door Code Recieved: " + str(game_manager.door_code))
	if game_manager.door_code == 0:
		get_node("/root/indoors/YSort/player/").position = get_node("/root/indoors/spawn_points/spawn_point_left/").position
	elif game_manager.door_code == 1:
		get_node("/root/indoors/YSort/player/").position = get_node("/root/indoors/spawn_points/spawn_point_right/").position
