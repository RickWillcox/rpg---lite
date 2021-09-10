extends Area2D




func _ready() -> void:
	pass # Replace with function body.

var items_in_range = {}

func _on_PickupZone_body_entered(body: Node) -> void:
	items_in_range[body] = body
	print(body)


func _on_PickupZone_body_exited(body: Node) -> void:
	if items_in_range.has(body):
		items_in_range.erase(body)
