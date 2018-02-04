extends Light2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	show()
	var rand = randi()%50+1
	if rand == 1:
		hide()
		