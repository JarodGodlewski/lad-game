extends Node2D

var joy = 420.0
var bark = 35.0
var prestiges = 0
var bria_unlocked = false

var cozy_level = 1

@onready var joy_label = $UI/JoyLabel
@onready var bark_bar = $UI/BarkBar

func _ready():
	update_ui()
	print("LAD - Autonomous build in progress")

func pet_lad():
	bark = max(0, bark - 25)
	joy += 55
	if randf() < 0.3:
		print("Critical Pet! ❤️")
	update_ui()

func add_cozy_upgrade():
	cozy_level += 1
	bark -= 8
	joy += 120
	print("Cozy Cave upgraded to level ", cozy_level)
	update_ui()

func prestige():
	prestiges += 1
	joy = 150
	bark = 12
	if prestiges >= 2 and not bria_unlocked:
		bria_unlocked = true
		print("🌟 Bria has been unlocked!")
	update_ui()

func update_ui():
	joy_label.text = "Joy: " + str(int(joy))
	bark_bar.value = bark

func _process(delta):
	joy += 15 * delta
	bark += 4 * delta
	update_ui()

# Connect these buttons in editor
func _on_pet_button_pressed():
	pet_lad()

func _on_prestige_button_pressed():
	prestige()