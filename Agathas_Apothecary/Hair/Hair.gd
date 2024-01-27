"""
When the hair is clicked, it sets the global variable of hairClicked to be true. 
This is a trigger for other functions to run.
"""

extends Node2D

func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton  and event.pressed:
		Global.hairClicked = true
