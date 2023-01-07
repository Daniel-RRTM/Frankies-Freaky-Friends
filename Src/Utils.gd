extends Node
class_name Utils




static func fileToDictionary(filepath:String) -> Dictionary:
	var fileToDictionaryFile = File.new()
	fileToDictionaryFile.open(filepath,File.READ)
	var fileToDictionaryJSON = JSON.parse(fileToDictionaryFile.get_as_text())
	fileToDictionaryFile.close()
	return fileToDictionaryJSON.result
