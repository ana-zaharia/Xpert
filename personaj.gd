extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel : Vector3 = Vector3()
export var step : float = 0.5
export var speed : float = 5
var mouseDelta : Vector2 = Vector2()
export var lookSensitivity : float = 10


#ROTIREA CARACTERULUI LA COLIZIUNE
#ch.translation.z+=pas
#ch.rotation_degrees.y=valoare

onready var ray: RayCast=get_node("Camera/RayCast")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
		
	vel.x=0
	vel.z=0
	
	var kbdInput = Vector2()
	
	if Input.is_action_pressed("move_forward"):
		kbdInput.y-= step 
	if Input.is_action_pressed("move_left"):
		kbdInput.x-= step 
	if Input.is_action_pressed("move_right"):
		kbdInput.x+= step 
	if Input.is_action_pressed("jump"):
		kbdInput.y= step - 10;
		
		
	kbdInput = kbdInput.normalized()
	
	var forward = global_transform.basis.z
	var right = global_transform.basis.x
	
	var relativeDirection = forward*kbdInput.y + right * kbdInput.x
	
	vel.x = relativeDirection.x * speed
	vel.z = relativeDirection.z * speed
	
	vel =  move_and_slide(vel, Vector3.UP) 


func _physics_process(delta):
	$Camera.current=true



func _on_obstacol_body_entered(body):
	if body.name == "personaj": 
		get_tree().change_scene("res://playerPrincipal/paginaFinal.tscn")


func _on_obstacol5_body_entered(body):
	if body.name == "personaj": 
		get_tree().change_scene("res://playerPrincipal/paginaFinal.tscn")


func _on_obstacol4_body_entered(body):
	if body.name == "personaj": 
		get_tree().change_scene("res://playerPrincipal/paginaFinal.tscn")


func _on_obstacol6_body_entered(body):
	if body.name == "personaj": 
		get_tree().change_scene("res://playerPrincipal/paginaFinal.tscn")
