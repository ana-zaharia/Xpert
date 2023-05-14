extends Spatial



# Called when the node enters the scene tree for the first time.
func _ready():
	$RootNode/AnimationPlayer.play("animatieIdle")
	
func _process(_delta):
	
	if Input.is_action_pressed("move_forward"):
			$RootNode/AnimationPlayer.play("slowRun")
	if Input.is_action_pressed("jump"):
			$RootNode/AnimationPlayer.play("animatieJump")
	if Input.is_action_pressed("move_left"):
			$RootNode/AnimationPlayer.play("slowRun")
	if Input.is_action_pressed("move_right"):
			$RootNode/AnimationPlayer.play("slowRun")		
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
