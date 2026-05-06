# ******A Day In The Life of a First Year Game Designer******

Student Name: Cody McCreedy  
Student Number: A00037984  
Class Group: TU984  

## ****Gameplay Video****

(LINK HERE)

## ****Screenshots****

### Main Menu
<img width="1920" height="1080" alt="Screenshot (26)" src="https://github.com/user-attachments/assets/fc95e4fd-7f72-40d6-afb6-2dcf0cf5671d" />

### Intro Sequence
<img width="1920" height="1080" alt="Screenshot (27)" src="https://github.com/user-attachments/assets/73c197dc-9443-4b01-93d6-f9a08c6effcf" />

<img width="1920" height="1080" alt="Screenshot (28)" src="https://github.com/user-attachments/assets/fc3f8b65-83ce-4684-a7cc-2b5c02971a77" />

### Dress-Up Minigame
<img width="1920" height="1080" alt="Screenshot (30)" src="https://github.com/user-attachments/assets/b1198feb-e847-4cd9-8594-558d0f936a91" />

### Collect-Items Minigame
<img width="1920" height="1080" alt="Screenshot (31)" src="https://github.com/user-attachments/assets/9a859ffb-3048-45ca-a62c-86a4cf6db0b1" />

### Feed-Cats Minigame
<img width="1920" height="1080" alt="Screenshot (32)" src="https://github.com/user-attachments/assets/872ad006-bd27-4076-80ea-5bcc1dee3396" />

### Run-for-the-Bus Minigame
<img width="1920" height="1080" alt="Screenshot (34)" src="https://github.com/user-attachments/assets/bcebebd0-2678-4b18-aba7-7694af36c3d5" />

<img width="1920" height="1080" alt="Screenshot (38)" src="https://github.com/user-attachments/assets/b998fde2-3fd1-40fd-9d16-e7ce600d18bb" />

<img width="1920" height="1080" alt="Screenshot (39)" src="https://github.com/user-attachments/assets/38029f32-4f70-40cb-8c86-1cbfed0acbed" />

### Game Over Screen
<img width="1920" height="1080" alt="Screenshot (35)" src="https://github.com/user-attachments/assets/cdbd77cf-121f-4bf5-af5d-45a39ce4d340" />

### Credits Screen
<img width="1920" height="1080" alt="Screenshot (37)" src="https://github.com/user-attachments/assets/6716890b-9a62-4cb5-a9db-f68b02643637" />

## ****Project Description****
This game was created for my Computational Arts End of Semester Assignment 2026. In this game the player controls Cody, a college student who wakes up 3 minutes before his bus arrives. The player must complete a handful of Cody's morning tasks and run for the bus in order to make it to college on time. This is a fast-paced, time-attack game where players must complete a series of short minigames before the clock runs out, with a bit of inspiration taken from ***WarioWare***.


## ****Instructions for Use****
This game should be played on (ITCH LINK HERE). Move the mouse and Left Click to Drag, Drop, and Collect items in the 2D Scenes. Move the mouse to look around and use WASD to move in the 3D Scene.

## ****How the Game Works****
***A Day in the Life of a First Year Game Designer*** uses **Global Time Pressure**, **Rapid Task-Switching**, **Multi-Modal Gameplay (2D Precision & 3D Navigation)**, **Procedural Obstacles**, and **High-Risk, High-Reward Decision Making** to create a fast paced, chaotic challenge.

### **Core Loop**
-  Start minigame
-  Complete task
-  Next minigame
-  Catch bus under 3 minutes (or 1 minute in **60 Second Rush**)

### **Minigame Feedback Loops**
#### Minigame 1 - Dress-Up
-  Click clothing
-  Drag onto Cody
-  Repeat x4
  
#### Minigame 2 - Collect-Items
-  Click item
-  Repeat x4

#### Minigame 3 - Feed-Cats
-  Click catfood sachet
-  Drag onto bowl
-  Repeat x3

#### Minigame 4 - Run-for-the-Bus
-  Observe the area and the obstacle(s)
-  Identify a viable path forward
-  Avoid time loss from **Cars** (Push Back) and the **Chicken** (Game Over) 
-  Get on the bus

## ****List of Classes/Assets****
| Class/Asset        | Source          | Use  |
| ------------- |:-------------:| -----:|
| mainmenu.gd     | Self Written | Hi |
| button.gd     | Self Written | Hi |
| dressup.gd     | Self Written | Hi |
| drag_and_drop.gd     | Self Written | Hi |
| bedroom.gd     | Self Written | Hi |
| item.gd     | Self Written | Hi |
| pet_cats.gd     | Self Written | Hi |
| catbowl.gd     | Self Written | Hi |
| cat_food.gd     | Self Written | Hi |
| runbus.gd     | Self Written | Hi |
| player.gd     | Self Written | Hi |
| car_spawner.gd     | Self Written | Hi |
| car.gd     | Self Written | Hi |
| car_crashed.gd     | Self Written | Hi |
| enemy_spawner.gd     | Self Written | Hi |
| enemy.gd     | Self Written | Hi |
| cutscene_controller.gd     | Self Written | Hi |
| bus.gd     | Self Written | Hi |
| credits.gd   | Self Written | Hi |
| intro1.gd     | Self Written | Hi |
| intro2.gd     | Self Written | Hi |
| intro3.gd     | Self Written | Hi |
| intro4.gd     | Self Written | Hi |
| intro5.gd     | Self Written | Hi |
| intro6.gd     | Self Written | Hi |
| music.gd   | Self Written | Hi |
| timer_ui.gd   | Self Written | Hi |
| game_over.gd   | Self Written | Hi |

## ****What I Am Most Proud of in This Assignment****



## ****What Did I Learn?****



## ****Code Examples****

--An object that can be placed and instantiate cars of random colours within random positions along an end of the road.

-2.5 Enemy Spawner - Node3D
--An object that spawns the enemy (the chicken) once the player enters an Area3D child, also initiating a cutscene where the camera zooms up to it to show that it has spawned.

