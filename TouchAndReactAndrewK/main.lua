-- Title: TouchAndReact
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...
 
--set background colour
display.setDefault ("background", 100/255, 89/255, 100/255)
--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- created blue button, set its position and make it visible
local bluebutton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true