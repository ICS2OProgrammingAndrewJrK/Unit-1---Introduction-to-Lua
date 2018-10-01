-----------------------------------------------------------------------------------------
-- Title:Local Variables
-- Name:Ms Andrew Jr
-- Course:ICS20/3C
-----------------------------------------------------------------------------------------
 
-- create my local variables 
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle 

-- set the bakground colour of my screen.Remember that colors are between 0 and 1.
display.setDefault("background", 1/255, 77/255, 77/255)

-- to remove status bar 
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and heigth of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)
 
-- anchor the rectangle in the top left corner of thr screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(0.8, 0.4, 0.6)

-- set the color of the border
myRectangle:setStrokeColor(7, 2, 7)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels²", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2
 
-- set color of the newtext
areaText:setTextColor( 1, 1, 1) 


local myCircle
local areaTextCircle
local circumference 
local radiusOfCircle = 140
local areaOfCircle
local PI = 3.14

--set the backgorund colour of my screen. Remember that colors are between 0 and 1.
display.setDefault("background", 29/25, 195/255, 100/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(10, 10, widthOfRectangle, heightOfRectangle)

--draw the circle that has coordinates of (850,150) and a radius of 140
myCircle = display.newCircle(850, 150, radiusOfCircle)

--anchor the rectangle in the top left cornor of thge screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 30
myRectangle.y = 20

--set the width of the border
myRectangle.strokeWidth = 20

--set the width of the border
myCircle.strokeWidth = 20

--set the color of the rectangle
myRectangle:setFillColor(200/255, 100/255,10/255)

--set the color of the circle
myCircle:setFillColor(150/255, 20/255, 200/255)

--set the color of the border
myRectangle:setStrokeColor(0, 0, 0)

--set the color of the border
myCircle:setStrokeColor(0, 0, 0)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle


--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this Cricle PI a radius of \n" ..
  widthOfRectangle .. " and a PI of " .. heightOfRectangle .. " is " ..
  areaOfRectangle .. " pixels². ", 0, 0, Arial, textSize)

--anchor the text and set its (x,y) position 
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight*2/3

-- set the color of the newText 
areaText:setTextColor (0.7, 0.9, 0.1)
-- set the color of the newText 
areaText:setTextColor (0.1, 0.3, 0.8)
