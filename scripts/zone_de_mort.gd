extends Area2D

onready var respawn = $Respawn

func _on_ZoneDeMort_body_entered(body):
	if "Joueur" in body.name:
		body.position = respawn.position
		body._perdreVie()
		
