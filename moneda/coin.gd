extends Area

signal monedaColectata

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	rotate_y(deg2rad(3))



func _on_coin_body_entered(body):
	if body.name == "personaj":
		
		$Timer.start()


func _on_Timer_timeout():
	emit_signal("monedaColectata")
	queue_free()
