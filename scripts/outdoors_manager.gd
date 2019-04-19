extends Node2D

func _ready():
	if game_manager.door_code == 0:
		get_node("/root/outdoors/player/").position = get_node("/root/outdoors/spawn_points/spawn_point_left/").position
	elif game_manager.door_code == 1:
		get_node("/root/outdoors/player/").position = get_node("/root/outdoors/spawn_points/spawn_point_right/").position
	
	if game_manager.moved_indoors == true:
		get_node("npc").queue_free()