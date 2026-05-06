# ******A Day In The Life of a First Year Game Designer******

Student Name: Cody McCreedy  
Student Number: A00037984  
Class Group: TU984  

## ****Gameplay Video****

https://youtu.be/ZNiCKFWB95s?si=mw0x24NZomuqVKL3

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
| mainmenu.gd     | Self Written | Resets the game's scores, timer, and connects play and credits buttons to their respective scenes. |
| button.gd     | Self Written | Sets the tween on all buttons, making them scale and disappear. |
| dressup.gd     | Self Written | Controls the dress-up minigame and sends the player to the next scene. |
| drag_and_drop.gd     | Self Written | Makes items able to be picked up and dropped. |
| bedroom.gd     | Self Written | Controls the collect-items minigame and sends the player to the next scene. |
| item.gd     | Self Written | Sets the tween on all items, and makes them disappear. |
| pet_cats.gd     | Self Written | Controls the feed-cats minigame, plays the cats' meows, and sends the player to the next scene. |
| catbowl.gd     | Self Written | Fills the cat bowls when the cat food is put on them. |
| cat_food.gd     | Self Written | Fills the cat bowls when dragged onto them. |
| runbus.gd     | Self Written | Makes the scene end and transition to the main menu 3 seconds after entering the bus. |
| player.gd     | Self Written | Player controller. |
| car_spawner.gd     | Self Written | Spawns car scenes within a certain area, and deactivates when the player gets close enough to it. |
| car.gd     | Self Written | Makes cars move at a constant speed along the z-axis and gives the cars random colours. |
| car_crashed.gd     | Self Written | Gives the cars random colours. |
| enemy_spawner.gd     | Self Written | Spawns the enemy once the player enters an Area3d. |
| enemy.gd     | Self Written | Makes the enemy fall and start following the player after the cutscene, trying to eliminate the player in an Area3D (hitbox). |
| cutscene_controller.gd     | Self Written | Causes and controls the cutscene once the player enters an Area3D. |
| bus.gd     | Self Written | Makes the bus move along the x axis and moves the player's camera once they enter its Area3D. |
| credits.gd   | Self Written | Brings player back to the main menu when the screen is clicked. |
| intro1.gd     | Self Written | Click to go to the next sequence. |
| intro2.gd     | Self Written | Click to go to the next sequence. |
| intro3.gd     | Self Written | Click to go to the next sequence. |
| intro4.gd     | Self Written | Click to go to the next sequence. |
| intro5.gd     | Self Written | Click to go to the next sequence. |
| intro6.gd     | Self Written | Click to go to the next sequence and start the timer. |
| music.gd   | Self Written | Plays the background music globally. |
| timer_ui.gd   | Self Written | Controls the timer through global functions called by other scripts and tweens. |
| game_over.gd   | Self Written | Resets the game's scores, timer, and connects try again and menu buttons to their respective scenes. |
| transition_screen.gd   | Self Written | Controls the transition screen between scenes through global functions called by other scripts. |

## ****What I Am Most Proud of in This Assignment****



## ****What Did I Learn?****



## ****Code Examples****

--An object that can be placed and instantiate cars of random colours within random positions along an end of the road.

-2.5 Enemy Spawner - Node3D
--An object that spawns the enemy (the chicken) once the player enters an Area3D child, also initiating a cutscene where the camera zooms up to it to show that it has spawned.

