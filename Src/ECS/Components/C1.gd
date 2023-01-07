extends Component
class_name C_1_SIZE

var value: String

func _init(valuePara:String):
	self.name = "C_1_SIZE"
	value     = valuePara



static func getAutoDoc(): 
	return{
	 "description" : "shows if still in game"
	,"type"        : "STRING"
	,"name"        : "Size"
}

