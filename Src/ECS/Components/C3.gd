extends Component
class_name C_3_DESCRIPTION

var value: String

func _init(valuePara:String):
	self.name = "C_1_DESCRIPTION"
	value     = valuePara



static func getAutoDoc(): 
	return{
	 "description" : "shows if still in game"
	,"type"        : "STRING"
	,"name"        : "Description"
}

