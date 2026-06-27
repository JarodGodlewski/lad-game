extends Node2D

var joy = 0
var bark = 35

func pet_lad():
    bark -= 22
    joy += 47
    print('Pet registered - Bark reduced')

func _process(delta):
    bark += 4 * delta
    joy += 12 * delta