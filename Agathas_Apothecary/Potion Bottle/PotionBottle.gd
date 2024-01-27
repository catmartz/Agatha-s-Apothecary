"""
Handles the potion filler single/double clicks and color setting.
"""

extends Node2D


@export var potionColor: Color = Color(0,0,0,0)

var LastPressedTime = 0


"""On scene load, set the color to be transparent."""
func _ready():
	$Image.modulate = Color(0,0,0,0)

"""Called every frame. Checks for single click according to time elapsed and if pressed."""
func _process(delta):
	if (LastPressedTime > 0):
		LastPressedTime = max(0, LastPressedTime - delta)
		if (LastPressedTime == 0) and Global.pathDone:
			OnSingleClick()


"""On click, checks for double click according to time elapsed and if pressed."""
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and Global.pathDone:
		if (LastPressedTime > 0):
			OnDoubleClick()
			LastPressedTime = 0
		else:
			LastPressedTime = 0.3


"""When double clicked, if not default cauldron color, reset scale and set the color 
to be the global mixed color (potion color "saved")."""
func OnDoubleClick():
	if Global.mixedColor != Global.defaultCauldColor:
		$Image.scale = Vector2(4.5, 4.5)
		$Image.modulate = Global.mixedColor
		potionColor = Global.mixedColor
		Global.curPotionColor = Global.mixedColor


"""When single clicked, if not transparent, reset scale and set the hair color to be the 
color inside this potion filler."""
func OnSingleClick():
	if potionColor != Color(0,0,0,0):
		Global.curPotionColor = potionColor
		$Image.scale = Vector2(4.5, 4.5)
		Global.hairClicked = true
		Global.potionClicked = true
