extends Area2D

func _ready():
	pass # Replace with function body.

func _on_NiveauTerminer_body_entered(body):
	if "Joueur" in body.name:
		get_tree().change_scene("res://scenes/Restart.tscn")
