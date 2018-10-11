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
display.setDefault("background",220/255,29/255,19/255) 

-- create a local variable
local textObject

-- display taxt on the screen at position position x =500 and y = 500 with
-- a deafult font style and font size of 50
textObject = display.newText( "Hello, Andrew Jr!", 500, 200, nil, 100 )

-- sets the color of the text
textObject:setTextColor(155/255, 42/255, 198/255)
textObjectSignature = display.newText( "By:Andrew Jr", 600, 500, nil, 69 )