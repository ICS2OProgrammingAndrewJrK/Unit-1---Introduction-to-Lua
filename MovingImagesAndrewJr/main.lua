-- Title: MovingImages
-- Name: Andrew Jr
-- Course: ICS2O/3C
-- This program...

-----------------------------------------------------------------------------------------
--SOUNDS 
-----------------------------------------------------------------------------------------

local goingHigherSound = audio.loadSound("Sound/goingHigher.mp3")
local goingHigherSoundChannel = audio.play(goingHigherSound)

-- hide the status dar 
display.setStatusBar(display.HiddenStatusBar)

-- glodal varibles
scrollSpeed = 2
scrollspeed = 1

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0 

rocketship.alpha = 1

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--set the initial x and y position of beetleship
rocketship.x = 0
rocketship.y = 400

-- Function: moveShip
-- Input this function accepts an event listener
-- Output: none
-- Description:This function adds the scroll speed to the x-value of the ship
local function MoveShip(event) 
    -- add the scroll speed to the x-value of the ship
    rocketship.x = rocketship.x + scrollSpeed  
    rocketship.alpha = rocketship.alpha + 0.03
    beetleship.x = beetleship.x + scrollspeed 
    -- change the transparency of the ship every time it moves so that it fades out
    beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)      
 