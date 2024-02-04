extends Node2D

func _process(delta):
	$Label.text = str(Main.p1_Score)
	$Label2.text = str(Main.p2_Score)

func _on_top_body_entered(body):
	body.direction.y *= -1 


func _on_bottom_body_entered(body):
	body.direction.y *= -1


func _on_left_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(566, 281)
	add_child(e)
	Main.p2_Score += 1
	

func _on_right_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(566, 281)
	add_child(e)
	Main.p1_Score += 1
