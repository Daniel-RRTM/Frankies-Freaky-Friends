extends Object
class_name EntityManager


func initialice() -> void:
	for organ in Parser_Organ.getAllOrgansOfJSON():
		Atlas.organs[organ.getCompValue("C_0_INDEX")] = organ
		










