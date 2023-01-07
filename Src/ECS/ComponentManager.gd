extends Object
class_name COMP


static func GET(index:String) -> Component:
	return _getAll()[index]


static func _getAll() -> Dictionary:
	return {
		 "C_0_INDEX"        : C_0_INDEX
		,"C_1_SIZE"         : C_1_SIZE
		,"C_2_NAME"         : C_2_NAME
		,"C_3_DESCRIPTION"  : C_3_DESCRIPTION
		,"C_4_SLOTS"        : C_4_SLOTS
		,"C_5_TEXTURE"      : C_5_TEXTURE
	}






