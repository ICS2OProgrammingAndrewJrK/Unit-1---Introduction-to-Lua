-- Name:Andrew Jr kuekam---------------------------------------------------------------------------------------
-- course: ICS20/3C
-- This program displays Hello,world on the ipad simulator and "Hellooooooo!" To the command
-- terminal.
-----------------------------------------------------------------------------------------

-- print "Hello, world" ot the command terminal
print ("***Hellooooooooooooo!") 
 
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar) 

-- sets  the background colour
display.setDefault("background",124/255,249/255,199/255) 

-- create a local variable
local textObject

-- display taxt on the screen at position position x =500 and y = 500 with
-- a deafult font style and font size of 50
textObject = display.newText( "Hello, Ms Raffin!", 500, 500, nil, 50 )

-- sets the color of the text
textObject:setTextColor(155/255, 42/255, 198/255)
