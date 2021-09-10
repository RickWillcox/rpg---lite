extends CanvasLayer


func _input(event):
	if event.is_action_pressed("show_inventory_key"):
		$Inventory.visible = !$Inventory.visible

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

