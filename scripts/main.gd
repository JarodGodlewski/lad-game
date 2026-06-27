extends Node2D

@onready var joy_label = $UI/JoyLabel
@onready var bark_bar = $UI/BarkBar
@onready var lad_area = $LadArea

var joy: float = 0

var bark: float = 35

func _ready():
    update_ui()
    print("LAD: Click the big area to pet her")

func _on_pet_button_pressed():
    bark = max(0, bark - 20)
    joy += 50
    update_ui()
    # TODO: Add scale bounce and particles in next task

func update_ui():
    joy_label.text = "Joy: " + str(int(joy))
    bark_bar.value = bark

func _process(delta):
    bark += 4 * delta
    if bark > 100:
        bark = 100
    joy += 5 * delta
    update_ui()