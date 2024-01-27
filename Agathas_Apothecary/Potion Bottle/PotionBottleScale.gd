"""
Scales the Potion Bottle when the mouse enteres or leaves its area.
"""

extends Node2D


"""Increases the bottle's size when the mouse enteres its area."""
func _on_area_2d_mouse_entered():
	scale = Vector2(4.7, 4.7)


"""Sets the bottle's size back to original when the mouse leaves its area."""
func _on_area_2d_mouse_exited():
	scale = Vector2(4.5, 4.5)
