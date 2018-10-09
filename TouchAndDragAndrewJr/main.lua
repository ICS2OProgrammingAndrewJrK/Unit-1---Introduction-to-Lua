-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Andrew Jr
-- Course: ICS2O/3C
-- This program...

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables. Iam still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)
local blueGirlWidth = blueGirl.width
local BlueGirlHeight = blueGirl.height


-- my boolean variables to track of which object i touched first
local alreadyTouchedYellowGirl = false