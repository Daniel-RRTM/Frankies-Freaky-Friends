extends Object
class_name Parser_Body


static func getAllBodiesOfJSON() -> Array:
	var jsonDict = Utils.fileToDictionary("res://Config/Bodies.json")
	var bodies : Array


	for body in jsonDict.keys():
		var ent = Entity.new()
		ent.addComponent(C_0_INDEX.new(body))

		for compIndex in jsonDict[body].keys():
				var value = jsonDict[body][compIndex]
				var comp  = COMP.GET(compIndex)
				ent.addComponent(comp.new(value))

		bodies.append(ent)


	return bodies




