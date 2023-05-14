extends Label

var monede = 0

func _ready():
	text = String(monede)


func _on_coin_monedaColectata():
	monede = monede + 1
	_ready()
