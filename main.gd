extends Node2D

var joy: float = 420.0
var bark: float = 25.0
var eternal_treats: int = 0
var prestiges: int = 0
var bria_unlocked: bool = false

func _ready():
	print("LAD v0.1 - Real MVP started")
	$JoyLabel.text = "Joy: " + str(int(joy))
	$BarkMeter.value = bark

func pet_lad():
	bark = max(0, bark - 18)
	joy += 42
	$BarkMeter.value = bark
	$JoyLabel.text = "Joy: " + str(int(joy))
	print("🐾 Pet! Bark reduced. Joy +42")

func prestige():
	prestiges += 1
	eternal_treats += 8 + prestiges * 4
	joy = 150
	bark = 12
	$BarkMeter.value = bark
	$JoyLabel.text = "Joy: 150"
	
	if prestiges >= 2 and not bria_unlocked:
		bria_unlocked = true
		print("🌟 Bria has been unlocked in the Skill Tree!")
	print("New Adventure! Eternal Treats: ", eternal_treats)

func _process(delta):
	joy += 15 * delta
	$JoyLabel.text = "Joy: " + str(int(joy))