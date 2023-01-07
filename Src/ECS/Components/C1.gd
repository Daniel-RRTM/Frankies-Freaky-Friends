extends Component
class_name C_1_SIZE

var value: int

func _init(valuePara:int):
	self.name = "C_1_SIZE"
	value     = valuePara



static func getAutoDoc(): 
	return{
	 "description" : "shows if still in game"
	,"type"        : "INTEGER"
	,"name"        : "Size"
}

