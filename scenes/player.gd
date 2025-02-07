extends CharacterBody2D

const SPEED = 100

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("left","right","up","down").normalized()
	
	velocity = direction * SPEED
	
	move_and_slide()
