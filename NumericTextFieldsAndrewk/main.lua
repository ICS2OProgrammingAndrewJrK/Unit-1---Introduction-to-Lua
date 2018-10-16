-- Title: NumericTextFields
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...
 
-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- set the background colour
display.setDefault("background", 33/255, 76/255, 74/255)

------------------------------------------------------
-- LOCAL VARIABLES
------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericTextFields
local randomNumber1
local randomNumber2
local userAnswer
local correctAnsqwer

-------------------------------------------------------
--LOCAL FUNCTIONS
-------------------------------------------------------

local function AskQuestion()
    -- generate 2 random numders between a max. and a min. numder
    randomNumber1 = math.random(0, 10)
    randomNumber2 = math.random(0, 10)

    correctAnswer = randomNumber1 + randomNumber2
     
    -- create questino in text object
    correctAnswer = randomNumber1 .. " + " .. randomNumber2 .. " = "
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end
local function NumericFieldListener( event 

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then
	
	    --whan the answer is submitted (enter key is pressed) set user input to user's answer
	    -- if the user answer and the	