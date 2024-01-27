"""
Scales Hair when the mouse enteres or leaves its area.
"""

extends Sprite2D

"""Increases the hair's size when the mouse enteres its area."""
func _on_hair_area_mouse_exited():
	scale = Vector2(1.0, 1.0)


"""Sets the hair's size back to original when the mouse leaves its area."""
func _on_hair_area_mouse_entered():
	scale = Vector2(1.04, 1.04)
