The game will consist of 6 main scenes: a main menu, intro, dress-up minigame, collect items minigame, feed cats minigame, and run for the bus minigame.
There will also be smaller scenes such as the timer, game over screen, credits, car spawner, and enemy spawner.
I will be using Photoshop, Blockbench, and real photos for sprites and backgrounds for this game.

-1.1. Main Menu - Node2D
--The main menu will consist of a Story Mode button, a 60 Second Rush button, and a credits button.
---1. Story Mode: Plays the intro and the player has 3 minutes to beat the game.
---2. 60 Second Rush: Skips the intro and the player has 1 minute to beat the game.
---3. Credits: Brings the player to the credits screen.
    
-1.2. Intro - Node2D
--The intro will be a storyboard of the main character (Cody/myself) with 6 different images.
---1. Cody is sleeping with a big snot bubble and Zs.
---2. Cody wakes up all drowsy.
---3. Cody checks his phone, seeing the time and an alert showing there is 3 minutes until his bus.
---4. The screen zooms into the alert.
---5. Cody's eyes come out of his face looking at his phone.
---6. Cody grabs his glasses with a smirk, with text saying "LOCK IN."

-1.3. Dress-Up Minigame - Node2D
--A minigame where the player must click and drag clothes onto Cody. These clothes will include:
---1. Shirt
---2. Jacket
---3. Jeans
---4. Shoes

-1.4. Collect Items Minigame - Node2D
--A minigame where the player must click on items to pick them up. These items will include:
---1. Laptop
---2. TUD Journal
---3. Phone Charger
---4. Erubong Keychain (One of my OCs)

-1.5. Feed Cats Minigame - Node2D
--A minigame where the player must drag a sachet of cat food onto the 3 cat bowls. The player can also interact with the cats to make them meow like a soundboard. These cats include:
---1. Charlie
---2. Oscar
---3. Nala

-1.6. Run For the Bus Minigame - Node3D
--A minigame where the player must make their final sprint for the bus. To do this, the player must:
---1. Dodge speeding cars
---2. Run from a giant chicken (a chicken wanders around this area in real life)
---3. Get on the bus

-2.1. Timer - CanvasLayer
--A digital clock timer that appears once the intro ends, if the clock hits the max time: game over.
---1. Story Mode: Max time = 3 minutes
---2. 60 Second Rush: Max time = 1 minute

-2.2. Game Over - CanvasLayer
--A screen that appears once one of the events occur:
---1. The timer hits max time
---2. The chicken catches you

-2.3. Credits - Node2D
--A scene that displays the credits of the game. These include:
---1. Producer - CodyWody
---2. Game Designer - CodyWody
---3. Programmer - CodyWody
---4. Artist - CodyWody
---5. Playtesters - CodyWody, Shaun Smith
---6. Cats - Charlie, Oscar Meatballs, Nala
---7. Chicken - Chicken
---8. Special Thanks - Catser

-2.4. Car Spawner - Node3D
--An object that can be placed and instantiate cars of random colours within random positions along an end of the road.

-2.5 Enemy Spawner - Node3D
--An object that spawns the enemy (the chicken) once the player enters an Area3D child, also initiating a cutscene where the camera zooms up to it to show that it has spawned.

