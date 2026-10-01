# GH-1459: traits that declare a Node or Resource base are valid export types,
# whether they are declared locally or used from a global trait.
extends Node

trait NodeDriver extends Node:
	@export var magazine: int

trait ResourceDriver extends Resource:
	@export var rounds: int

@export var node_gun: NodeDriver
@export var resource_gun: ResourceDriver

func test() -> void:
	for property in get_property_list():
		if property.name == "node_gun" or property.name == "resource_gun":
			print("%s hint_is_node_type=%s hint_is_resource_type=%s" % [
					property.name,
					property.hint == PROPERTY_HINT_NODE_TYPE,
					property.hint == PROPERTY_HINT_RESOURCE_TYPE])
