extends Node2D

var moved_indoors = false
var door_code = -1 #0 = Top Left, 1 = Top Right, 2 = Bottom Left, 3 = Bottom Right

func _ready():
	print("Game Manager Loaded")
	
func enter_building(var door_code):
	self.door_code = door_code
	match door_code:
		0:
			print("Door Code: 0")
			if get_tree().current_scene.name == "outdoors":
				get_tree().change_scene("res://scenes/indoors.tscn")
				moved_indoors = true
			elif get_tree().current_scene.name == "indoors":
				get_tree().change_scene("res://scenes/outdoors.tscn")
		1:
			print("Door Code: 1")
			if get_tree().current_scene.name == "outdoors":
				get_tree().change_scene("res://scenes/indoors.tscn")
				moved_indoors = true
			elif get_tree().current_scene.name == "indoors":
				get_tree().change_scene("res://scenes/outdoors.tscn")
		2:
			print("Door Code: 2")
		3:
			print("Door Code: 3")