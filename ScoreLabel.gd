extends Label

var score = 0
# Called when the node enters the scene tree for the first time.
func _on_mob_squashed():
	score += 1
	text = "Score: %s" % score
