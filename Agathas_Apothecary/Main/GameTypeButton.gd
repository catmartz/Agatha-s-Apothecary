"""
If the requests are visible, make the global variable false and hide the requests. 
If the requests are not visible, make the global variable true and show the requests.
"""

extends TextureButton


func _pressed():
	if (Global.requestsVisible):
		Global.requestsVisible = false
		Global.colorCheckButton.hide()
	elif (!Global.requestsVisible):
		Global.requestsVisible = true
		Global.colorCheckButton.show()
		Global.firstRequestClick = true
