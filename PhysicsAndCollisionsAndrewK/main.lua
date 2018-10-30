---- Title: PhysicsAndCollisions
-- Name: Andrew Jr
-- Course: ICS2O/3C
-- This program...
-----------------------------------------------------------------------------------------
--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start phsics
physics.start()
-----------------------------------------------------------------------------------------
--Objects
-----------------------------------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 0)
ground.x = 510
ground.y = 750

--Change the width to be the same as the screen
ground.width = display.contentWidth

-- Add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

----------------------------------------------------------------------------------

local beam = display.newImage("Images/beam.png", 0, 0)
--set the x and y pos
beam.x = display.contentCenterX/15
beam.y = display.contentCenterY*1.65

beam.Width = display.contentWidth/100
beam.Height = display.contentHeight/100

beam.xScale = 3
beam.yScale = 2

-- rotate the bame -60 derees so its on an angle
beam:rotate(310)

-- send it to the back layer
beam:toBack()

--add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------------

local beamlong = display.newImage("Images/beamlong.png", 0, 0)
--set the x and y pos
beamlong.x = display.contentCenterX/15
beamlong.y = display.contentCenterY*1.65

beamlong.x = 900
beamlong.y = 600

beamlong.xScale = 5
beamlong.yScale = 5

-- rotate the bame -60 derees so its on an angle
beamlong:rotate(90)

-- send it to the back layer
beamlong:toBack()

--add to physics
physics.addBody(beamlong, "static", {friction=0.5, bounce=0.3})
------------------------------------------------------------------------------------------
-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

    -- set the x and y pos
    bkg.x = display.contentCenterX
    bkg.y = display.contentCenterY

    bkg.width = display.contentWidth
    bkg.height = display.contentHeight
    
    --set to back
    bkg:toBack()

------------------------------------------------------------------------------------------
--FUNCTIONS
------------------------------------------------------------------------------------------

-- create the frist ball
local function fristBall()
    -- creation frist ball
    local ball1 = display.newImage("Images/super_ball.png", 0, 0)

    --add to phsics
    physics.addBody(ball1, {density=1, friction=0.5, bounce=1, radius=25})
end

------------------------------------------------------------------------------------------

local function secondBall()
    -- creation frist ball
    local ball2 = display.newImage("Images/super_ball.png", 0, 50)
    -- adding to physics
    physics.addBody(ball2, {density=1, friction=0.5, bounce=1, radius=25})
    ball2.xScale = 4
    ball2.yScale = 4
end

---------------------------------------------------------------------------------------------------

local function thirtBall()
    -- creation frist ball
    local ball3 = display.newImage("Images/super_ball.png", 0, 0)
    -- adding to physics
    physics.addBody(ball3, {density=1, friction=0.5, bounce=1, radius=25})
    ball3.xScale = 2
    ball3.yScale = 2
end

-----------------------------------------------------------------------------------------
--TIMER DELAYS -call each frunction after the givrn millisecond
-----------------------------------------------------------------------------------------
timer.performWithDelay( 0, fristBall)
timer.performWithDelay( 500, secondBall)
thirtBall()