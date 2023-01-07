extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	bbcode_text += "there are "+str(Atlas.bodies.size())+" bodies:\n"
	for body in Atlas.bodies.keys():
		bbcode_text += body+"\n"
	
	bbcode_text += "\n---------------------------------\n\n"
	
	bbcode_text += "there are "+str(Atlas.organs.size())+" organs:\n"
	for body in Atlas.organs.keys():
		bbcode_text += body+"\n"
