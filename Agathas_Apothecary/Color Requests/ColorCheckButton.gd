"""
Scales ColorCheckButton when the mouse enteres or leaves its area.
"""

extends TextureButton

"""Increases the button's size when the mouse enteres its area."""
func _on_mouse_entered():
	scale = Vector2(1.05, 1.05)


"""Sets the button's size back to original when the mouse leaves its area."""
func _on_mouse_exited():
	scale = Vector2(1, 1)
