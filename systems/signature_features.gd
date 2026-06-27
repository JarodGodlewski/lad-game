extends Node

# Phase 3 - Bone Battle + Real Photo System

var bone_battle_active = false

var real_photo_mode = false

func trigger_bone_battle():
	bone_battle_active = true
	print("BONE BATTLE INITIATED! The war is never over.")

func unlock_real_photos():
	real_photo_mode = true
	print("Real photos of Layla & Bria unlocked! ❤️")