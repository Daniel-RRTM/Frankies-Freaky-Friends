extends Node


var organs : Dictionary
var bodies : Dictionary


func _ready() -> void:
	for organ in Parser_Organ.getAllOrgansOfJSON():
		organs[organ.getCompValue("C_0_INDEX")] = organ
	
	for body in Parser_Body.getAllBodiesOfJSON():
		bodies[body.getCompValue("C_0_INDEX")] = body
	
