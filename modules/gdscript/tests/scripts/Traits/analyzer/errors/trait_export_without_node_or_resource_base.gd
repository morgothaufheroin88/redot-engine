# GH-1459: a trait with no explicit base cannot be exported, because it can be
# used by both Node and Resource classes. The error has to say so.
trait MassDriver:
	@export var magazine: int

@export var mac_gun: MassDriver

func test() -> void:
	pass
