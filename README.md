# Agatha's Apothecary

Welcome to _Agatha's Apothecary_! Let's get started!

Agatha's Apothecary is a potion mixing game where the user is able to select the ingredients that they want to mix together and make a potion.

Created by [Cat Martins](https://github.com/catmartz), [Audrey Smyczek](https://github.com/Audrey-Smyczek), and [Daniela Martinez](https://github.com/martinezdaniela17).

## How to Download the Game
In order to play, you need to first download the [Godot Game Engine](https://godotengine.org/). Then, clone the GitHub repository to your computer. Once that is done, open Godot and click the "Scan" button in the Project Manager window. Select the location of your cloned repository and let the project open. Once open, you can run by clicking the "add scene" button in the top right corner. Another window will pop up with Agatha's Apothecary. 

## How to Play the Game
**Experimental Mode (default):**
Click a bowl to see which ingredient is inside it and the color that will be mixed. Then, click the ingredient above the cauldron to mix it into the cauldron. Mix as many colors as you would like to reach your desired color. Click Agatha's hair to change it to the cauldron potion color. Click the reset color button to reset the cauldron.

**Request Mode:**
Click the button in the top right corner to enter Request Mode. Select Agatha's speech bubble to start her request. Cultivate her desired color, and change her hair to it. When you have succeeded, she will thank you and you may click the speech bubble again for the next request.

**Potion Bottles:**
Save colors to the potion bottles on the shelf by double clicking. Single click a bottle to change Agatha's hair to that color!

## Main Gameplay Screen
![Agatha's Apothecary Main Game Screen](https://github.com/Audrey-Smyczek/agathas-apothecary/blob/current-main/Screenshot%202023-12-18%20at%2010.30.32%E2%80%AFAM.png)

## Framework Used
Agatha's Apothecary was created using the [Godot Game Engine](https://godotengine.org/) (version 4.1.1) with gdscript.

All of the images used in Agatha's Apothecary were designed and created by Daniela Martinez using [Krita](https://krita.org/en/).

## Reason for Creation
Agatha's Apothecary was created specifically for Software Design and Development (Comp 225) at Macalester College for the Fall Semester 2023. 

We were fearlessly led by Lauren Milne.

## Why Agatha's Apothecary?
Agatha's Apothecary was created for burnt out college students who need a relaxing, yet productive, video game to bring a small dose of joy into their lives. Agatha's Apothecary was made to motivate people to create and mix and try again and just have fun. Since this was the goal, there is no need for the user to collect resources or complete levels, they just need to mix the ingredients that are available.

## Code Information and Explanation
Since the code is structured through Godot, it is formatted in a tree structure which means that the children nodes (also known as Scenes) can be accessed through the parent nodes. This allows the parent nodes, such as the main screen, to hold children nodes, such as bowls or ingredients. Scripts can be attached to any number of nodes in Godot and the overlap of code can often be confusing. Code that was written in a child's script can be pulled by the parent, for example, the code for the bowls to expand when the mouse hovers over it is linked to the image sprite. The image sprite is a child of the larger bowl node. When the bowl node is loaded into the main scene, it automatically includes the image sprite and the script that accomanies it. This means that the main node cannot directly access the image's script however it does inherit the code that is included in it. 

## Code Structure
The code is split into 6 main folders, _**Bowl, Cauldron, Color Requests, Hair, Main, and Potion Bottle.**_

_Bowl, Cauldron, Color Requests, Hair, Main, and Potion Bottle contain the following:_

**Scripts**, the written out code, that are uppercase and end in '.gd'.

**Images** that are lowercase and end in '.png'.

**Scenes**, that are the containers which combine the scripts and images, which are a combination of uppercase and lowercase and end in '.tscn'. There is no standard since they are automatically created and there is a concern that updating the names will create issues.

_Bowl and Color Requests also contains:_

**Resources**, custom item type that can be shared across files and hold custom fields, which are camelCase and end in '.tres'.

## Code Styling
The code is located in the '.gd' script files. 

The files start with 'extends' which informs the code what type of node the script is created for.

There are two ways to load information into the script immediatly, either '@onready' below the 'extends' statement and above any function statements or through the function '_ready()'.

Following the ready statements, which are not neccesary, functions are defined using 'func' followed by the function name. The function can either take parameters, information that it needs to use within the function, or not.

Functions that are marked with a green arrow to the left of the line numbers indicates that the function has a connection to an outside signal that will indicate for the function when to run.

Comments are marked with '#' at the start of the line, they are bypassed when the code is run.

There are multiple branches of the Agatha's Apothecary repository. The one to use is 'current-main', there were many issues with GitHub over the course of the project which caused the creation of different branches.

## Current Concerns
Due to the lack of framework for accessibility, only the bowls and ingredients have audio-streams which allow for 'text-to-speech' to occur when the user hovers over the different items on the screen with the mouse. This means that a number of items are not accessible for people with low or no vision.

## Future Work
Adding a recipe book which saves the quanitity of items that are added to the cauldron for each mix. Adding more animations. NPCs who are customers and request potions. An additional animated pet that is a bird or cat.

## Credits
Lauren Milne for her dedication to accessibility and support throughout the process.

Paul Cantrell for his willingness to assist us during [Dev Garden](https://devgarden.macalester.edu/) Hours.

[Godot Documentation](https://docs.godotengine.org/en/stable/tutorials/2d/index.html)

[README Structure](https://www.mygreatlearning.com/blog/readme-file/#:~:text=readme%20file%20is.-,What%20is%20a%20README%20File%3F,about%20the%20patches%20or%20updates.)

[Signal Import Code](https://kidscancode.org/godot_recipes/3.x/basics/custom_resources/index.html)

[Global Variables](https://youtu.be/sc-tEPdLZhk?si=rPEOMSKtXi5BGy9X)

[Custom Datatypes](https://www.reddit.com/r/godot/comments/y7prsm/is_there_a_way_to_do_custom_datatypes_like_c/) from user StewedAngelSkins

[Custom Resources](https://www.youtube.com/watch?v=vzRZjM9MTGw)

[Changing Sprite Textures](https://ask.godotengine.org/16683/answered-how-to-change-the-texture-of-a-sprite)

[Clearing Spring Texture](https://ask.godotengine.org/64142/how-to-clear-texture-of-sprite)

[Calling Class Methods from External Scripts](https://ask.godotengine.org/16097/how-do-you-call-class-methods-from-an-external-gdscript-file)

[Object Moving on a Path](https://vionixstudio.com/2022/02/15/move-an-object-along-a-path-in-godot-2d/)

[Character Moving on a Path](https://www.youtube.com/watch?v=ENpCQUj371k)

[Audio Stream](https://docs.godotengine.org/en/stable/classes/class_audiostream.html)

## Game License
[MIT License](https://github.com/Audrey-Smyczek/agathas-apothecary/blob/current-main/LICENSE)
