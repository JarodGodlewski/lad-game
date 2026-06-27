extends Node

# Phase 2 - Cozy Cave System

var upgrades = {
	"blanket": 1,
	"pillow_fort": 0,
	"round_bed": 0,
	"bria_pool": 0
}

func buy_upgrade(name: String):
	upgrades[name] += 1
	print("Purchased ", name, " - Total level: ", upgrades[name])