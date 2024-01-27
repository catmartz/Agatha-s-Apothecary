"""
Ingredient class which handles the attributes of each bowl. The attributes (name, texture, 
color, audio file)are set in the Main Scene, where each individual bowl is created.
"""

extends Resource

class_name Ingredient

@export var name : String
@export var texture : Texture
@export var color : Color
@export var audioFile : AudioStream


"""Getter for Ingredient name"""
func get_Name():
	return name


"""Getter for Ingredient texture"""
func get_Texture():
	return texture


"""Getter for Ingredient color"""
func get_Color():
	return color


"""Getter for Ingredient audio file"""
func get_AudioFile():
	return audioFile
