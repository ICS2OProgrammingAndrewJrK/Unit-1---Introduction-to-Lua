-- Title: TouchAndReact
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...
 
-----------------------------------------------------------------------------------------------
--SOUNDS
-----------------------------------------------------------------------------------------------

local actionableSound = audio.loadSound("Sound/actionable.mp3")
local actionableSoundChannel


--set background colour
display.setDefault ("background", 100/255, 89/255, 100/255)
--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- created blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- created red button, set its position and make it visible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create red button, set ots position and make it invisible
local textObject = display.newText ("Clicked!", 200, 76, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display. contentHeight/2
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false
textObject.x = 500
textObject.y = 490

-- created checkmark button, set its position and make it visible
local checkmarkButton = display.newImageRect("Images/checkmark.png",198, 96)
checkmarkButton.x = 500
checkmarkButton.y = 280
checkmarkButton.isVisible = false

-- Funtion: BlueButtonListener
-- Input: touch listener
-- output: none
-- Description:when blue button os clicked, it will
-- and make the blue button disappear
local function BlueButtonListener(touch)
    if (touch.phase == "began") then
    	blueButton.isVisible = false
    	redButton.isVisible = true
    	textObject.isVisible = true
        actionableSoundChannel = audio.play(actionableSound)
    end	

    if (touch.phase == "ended") then
        blueButton.isVisible = true
        checkmarkButton.isVisible = true
        redButton.isVisible = false
        textObject.isVisible = false
    end
end    
 
-- Funtion: redButtonListener
-- Input: touch listener
-- output: none
-- Description:when red button os clicked, it will
-- and make the red button disappear
local function redButtonListener(touch)
    if (touch.phase == "began") then
    	redButton.isVisible = true
    	blueButton.isVisible = false
    	textObject.isVisible = true
    end	


    if (touch.phase == "ended") then
        redButton.isVisible = false
        blueButton.isVisible = true
        textObject.isVisible = false
        checkmarkButton.isVisible = true
    end
end     

-- Funtion: checkmarkButtonListener
-- Input: touch listener
-- output: none
-- Description:when checkmark button os clicked, it will
-- and make the checkmark button disappear

local function checkmarkButtonListener(touch)
    if (touch.phase == "began") then
    	checkmarkButton.isVisible = false
    	checkmarkButton.isVisible = true
    	textObject.isVisible = true
    end	

    if (touch.phase == "ended") then
        checkmarkButton.isVisible = true
        checkmarkButton.isVisible = false
        textObject.isVisible = false
    end
end     
--add the respective listesteners to each object
blueButton:addEventListener("touch", BlueButtonListener)

--add the respective listesteners to each object
redButton:addEventListener("touch", redButtonListener)