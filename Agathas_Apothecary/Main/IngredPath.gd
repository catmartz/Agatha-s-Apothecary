"""
Handles the movement of the ingredient sprite on the path.
"""

extends Path2D

@onready var PathFollow = get_node("IngredPathFollow")
@onready var ingredSprite = get_node("IngredPathFollow/IngredSprite")

"""Called every frame. Sets the path speed and progress according to frame progress.
Gets path progress and once has progressed to a certain point, resets the path and 
allows cauldron colors to mix. Removes sprite texture."""
func _process(delta):
	var pathProgress = PathFollow.progress
	var startCurve = get_curve( ).get_point_position(0).y
	var endCurve = get_curve( ).get_point_position(1).y
	
	if pathProgress >= endCurve-startCurve-4 and pathProgress < endCurve-startCurve-3:
		Global.mixing = true
		
	if pathProgress >= endCurve-startCurve-3:
		Global.ingredClicked = false
		PathFollow.progress = 0
		ingredSprite.texture = null
		Global.pathDone = true
		
	if Global.ingredClicked:
		const movespeed := 130.0
		$IngredPathFollow.progress += movespeed * delta
