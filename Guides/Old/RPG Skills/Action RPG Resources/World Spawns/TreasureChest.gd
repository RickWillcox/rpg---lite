extends StaticBody2D

onready var slime_item = preload("res://Action RPG Resources/Inventory/ItemDrop.tscn")

var already_opened = false

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if already_opened == false:
		var spawn_item = get_node("PlayerOpenRange").chest_open
		if spawn_item:
			already_opened = true
			var slime_item_spawn = slime_item.instance()
			get_parent().add_child(slime_item_spawn)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
