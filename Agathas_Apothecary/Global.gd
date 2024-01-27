"""
Holds global variables used throughout project
"""

extends Node

# Colors
var mixedColor : Color
var hairColor : Color
var curPotionColor : Color
var defaultCauldColor : Color = Color(0.502,0.502,0.502,1)

# Current Ingredient Information
var curIngredName : String
var curIngredTexture : Texture
var curIngredColor : Color = Color(0,0,0,0)

# Buttons
var welcomeButton : TextureButton
var gameTypeButton : Button
var colorCheckButton : Node

# Objects Clicked
var bowlClicked : bool = false
var ingredClicked : bool = false
var hairClicked : bool = false
var potionClicked : bool = false

# Misc Bools
var pathDone : bool = true
var mixing : bool = false
var requestsVisible : bool = false
var firstRequestClick : bool  = false
var gameTypePressed : bool = false
