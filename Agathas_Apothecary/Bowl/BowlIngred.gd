"""
Script which handles the properties of an individual bowl. A bowl is allowed to use the
Ingredient class properties. Handles mouse hover scaling and what happens when a bowl 
is clicked.
"""

extends Node2D


"""Allows bowl to use Ingredient's properties"""
@export var ingredInfo : Ingredient


"""On scene load, change the inside of the bowl to be the appropriate color"""
func _ready():
	$BowlFiller.modulate = ingredInfo.get_Color()


"""When a bowl is clicked, sets the global variables to be the current bowl 
selected and sets the global bool to be true (a bowl was clicked)"""
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	
	if event is InputEventMouseButton and event.pressed and Global.pathDone:
		
		var getCurName = ingredInfo.get_Name()
		Global.curIngredName = getCurName
		
		var getCurTex = ingredInfo.get_Texture()
		Global.curIngredTexture = getCurTex
		
		var getCurCol = ingredInfo.get_Color()
		Global.curIngredColor = getCurCol
		
		Global.bowlClicked = true


"""Increases the bowl's size when the mouse enteres its area."""
func _on_area_2d_mouse_entered():
	scale = Vector2(0.13, 0.13)
	$AudioStreamPlayer2D.set_stream(ingredInfo.get_AudioFile())
	$AudioStreamPlayer2D.play()


"""Sets the bowl's size back to original when the mouse leaves its area."""
func _on_area_2d_mouse_exited():
	scale = Vector2(0.12, 0.12)
	$AudioStreamPlayer2D.stop()
 
