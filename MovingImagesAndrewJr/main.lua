-- Title: MovingImages
-- Name: Andrew Jr
-- Course: ICS2O/3C
-- This program...
 
-- hide the status dar 
display.setStatusBar(display.HiddenStatusBar)

-- glodal varibles
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Image/background.png", 2048, 1536)

-- character image with width and height 
local beetleship = display.newImageRect("Image/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0 

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: moveShip
-- Input this function accepts an event listener
-- Output: none
-- Description:This function adds the scroll speed to the x-value of the ship
local function MoveShip(event) 
    -- add the scroll speed to the x-value of the ship
    beetleship.x = beetleship.x + scrollSpeed 
    -- change the transparency of the ship every time it moves so that it fades out
    beetleship.alpha = beetlesship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventlistener("enterFrame", MoveShip)      