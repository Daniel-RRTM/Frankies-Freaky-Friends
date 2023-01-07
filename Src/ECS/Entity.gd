extends Node
class_name Entity


# ----- INITIALICE --------------------------------------------------------- ##


# VAR > INDEX_NAME : INSTANCE     
var templates  : Dictionary = {}
var components : Dictionary = {}

# VAR > ENUMs
var flags : Array = []



# ----- GETTER ------------------------------------------------------------- ##


#>>> Components <<<#


# FUNC > returns instance! use [getCompValue] for its content  
func getComp(compName:String) -> Component:	
	return self.components[compName]

# FUNC > Check [compInst.getType_quack()] for type of return 
func getCompValue(compName:String): 
	return self.components[compName].value

func hasComp(componentName:String) -> bool:
	return self.components.has(componentName)


#>>> Templates <<<#


# FUNC > Flyweight-pattern, Instances are shared globally! 
func getCompTemp(tempName:String, compName:String) -> Component:  
	return templates[tempName].components[compName]

# FUNC > Flyweight-pattern, Instances are shared globally! 
# FUNC > Check [compInst.getType_quack()] for type of return 
func getCompTempValue(tempName:String, compName:String):
	return getCompTemp(tempName,compName).value

func hasTemplate(tempName:String) -> bool:
	return self.templates.has(tempName)

func getFlagTemp(tempName:String):
	return templates[tempName].flags

func hasFlag(flagName:String)  -> bool:   return flags.has(flagName)



# ----- SETTER ------------------------------------------------------------- ##


#>>> Components <<<#


# FUNC > Has to be indexed children of Component                
func addComponent(compInstance:Component) -> void:
	components[compInstance.name] = compInstance
	compInstance.owner = self

# FUNC > will not [queue_free()] the Component!                 
func removeComponent(compName:String) -> void:
	if hasComp(compName):  components.erase(compName)	


#>>> Templates <<<#


func addTemplate(templateName:String, ent:Entity) -> void:
	templates[templateName] = ent

func removeTemplate(tempName:String) -> void:
	if hasTemplate(tempName):   templates.erase(tempName)


#>>> Flags <<<#


func addFlag(flagName:String) -> void:
	flags.append(flagName)

func removeFlag(flagName:String) -> void:
	flags.erase(flagName)



