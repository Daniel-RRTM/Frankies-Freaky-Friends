extends Object
class_name Parser_Organ


static func getAllOrgansOfJSON() -> Array:
	var jsonDict = Utils.fileToDictionary("res://Config/Organs.json")
	var organs : Array


	for organ in jsonDict.keys():
		var ent = Entity.new()
		ent.addComponent(C_0_INDEX.new(organ))

		for compIndex in jsonDict[organ].keys():
			var value = jsonDict[organ][compIndex]
			var comp  = COMP.GET(compIndex)
			ent.addComponent(comp.new(value))

		organs.append(ent)


	return organs




