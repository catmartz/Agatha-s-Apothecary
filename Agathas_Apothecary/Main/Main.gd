"""
The Main script that controls the main scene for the project Agatha's Apothecary.
"""

extends Node2D


"""Get's the ingredient sprite node to be accessible"""
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


"""On scene load, sets default status of objects and get's nodes for later use."""
func _ready():
	Global.mixedColor = Global.defaultCauldColor
	$CauldColor.modulate = Global.mixedColor
	Global.hairColor = Global.defaultCauldColor
	$Hair.modulate = Global.hairColor
	Global.gameTypeButton = get_node("GameTypeButton")
	Global.colorCheckButton = get_node("ColorCheckButton")
	Global.colorCheckButton.hide()
	Global.welcomeButton = get_node("Welcome")


"""Called every frame. If a bowl is clicked, change the sprite texture. If the ingredient 
is clicked, update the mixed color and cauldron.if the hair is clicked and a potion was 
clicked, update the hair color to be the potion filler color. If only the hair is clicked, 
update the hair color to be the global mixed color."""
func _process(_delta):
	if Global.bowlClicked:
		spriteTexture()
	
	if Global.mixing:
		print("mixing...")
		mixingRGB()
		$CauldColor.modulate = Global.mixedColor
		Global.mixing = false
	
	if Global.hairClicked:
		if Global.potionClicked:
			Global.hairColor = Global.curPotionColor
			$Hair.modulate = Global.curPotionColor
			Global.hairClicked = false
			Global.potionClicked = false
		else:
			Global.hairColor = Global.mixedColor
			$Hair.modulate = Global.hairColor
			Global.hairClicked = false


"""Sets the sprite's texture to be whatever the current ingredient is"""
func spriteTexture():
	ingredSprite.texture = Global.curIngredTexture


"""Allows bowls to be unclickable while ingredient sprite is moving."""
func _on_ingred_sprite_texture_changed():
	Global.bowlClicked = false


"""Mixing current ingredient color and mixed color according to RGB values and setting
Global variable, if the cauldron color is not the default."""
func mixingRGB():
	if Global.mixedColor == Global.defaultCauldColor:
		Global.mixedColor = Global.curIngredColor
	else:
		var newR = (Global.curIngredColor.r*0.4)+(Global.mixedColor.r*0.6)
		var newG = (Global.curIngredColor.g*0.4)+(Global.mixedColor.g*0.6)
		var newB = (Global.curIngredColor.b*0.4)+(Global.mixedColor.b*0.6)
		Global.mixedColor = Color(newR, newG, newB)


"""Mixing current ingredient color and mixed color according to HSV values."""
func mixingHSV(): 
	var mixedH = Global.mixedColor.h
	var mixedS = Global.mixedColor.s
	var mixedV = Global.mixedColor.v
	
	var currH = Global.curIngredColor.h
	var currS = Global.curIngredColor.s
	var currV = Global.curIngredColor.v
	
	var newH = (currH + mixedH)/2
	var newS = (currS + mixedS)/2
	var newV = (currV + mixedV)/2
	
	Global.mixedColor = Color.from_hsv(newH, newS, newV)


"""Resets global mixed color and hair color when reset button pressed."""
func _on_reset_button_pressed():
	Global.mixedColor = Global.defaultCauldColor
	$CauldColor.modulate = Global.defaultCauldColor
	Global.hairColor = Global.defaultCauldColor
	$Hair.modulate = Global.defaultCauldColor
