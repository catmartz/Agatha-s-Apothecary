"""
Handles behavior of the ingredient sprite above the cauldron after bowl click.
"""

extends Sprite2D

"""Sets global variables to enable path to start and bowls to be unclickable."""
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale = Vector2(0.1, 0.1)
		Global.ingredClicked = true
		Global.pathDone = false
		


"""Increases the ingredient's size when the mouse enteres its area."""
func _on_area_2d_mouse_entered():
	if !Global.ingredClicked:
		scale = Vector2(0.12, 0.12)


"""Sets the ingredient's size back to original when the mouse leaves its area."""
func _on_area_2d_mouse_exited():
	if !Global.ingredClicked:
		scale = Vector2(0.1, 0.1)
