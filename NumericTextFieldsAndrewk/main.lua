-- Title: NumericTextFields
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...
 
--hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour 
display.setDefault("background", 50/255, 70/255, 83/255)

-------------------------------------------------------------------------------------
--Local variables
-------------------------------------------------------------------------------------


--create local variables 
local questionObject
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local incorrectAnswer
local correctAnswer
local randomOperator

------------------------------------------------------------------------------------
-- SOUNDs
------------------------------------------------------------------------------------

--Setting a variable to an mp3 file
local heySound = audio.loadSound("Sounds/hey.mp3")
local heySoundChannel
local wrongSound = audio.loadSound("Sounds/wrongSound.mp3")

------------------------------------------------------------------------------------
-- local functions 
------------------------------------------------------------------------------------

local function AskQuestion()
	--generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(1,3)
	randomNumber1 = math.random(0,10)
	randomNumber2 = math.random(0,10)

 
 	if (randomOperator == 1) then
 		correctAnswer = randomNumber1 + randomNumber2
	
		--create questionin text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
	 	correctAnswer = randomNumber1 - randomNumber2

		--create questionin text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then
	 	correctAnswer = randomNumber1 * randomNumber2

		--create questionin text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
	end	

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	--User beging editing "numericfeild"
	if ( event.phase == "began" ) then

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user input bto user's answer
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			incorrectObject.isVisible = false
			heySoundChannel = audio.play(heySound)
			timer.performWithDelay(2000,HideCorrect)
		else 
			correctObject.isVisible = false 
			incorrectObject.isVisible = true
			wrongSoundChannel = audio.play(wrongSound)
			timer.performWithDelay(2000,HideCorrect)
		end
	    --clear text field 
	    event.target.text = ""
	end
end

----------------------------------------------------------------------------------------------------------------------------
--object Creation 
----------------------------------------------------------------------------------------------------------------------------


-- display a question and sets the color 
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 60)
questionObject:setTextColor(5/255, 200/255, 198/255)

-- create the correct  text object and make it invisible
correctObject = display.newText("correct, Well done!", display.contentWidth/2, display.contentHeight*2/3, nil, 70)
correctObject:setTextColor(200/255, 200/255, 180/255)
correctObject.isVisible = false

-- create numeric field 
numericField = native.newTextField(display.contentWidth/2, display.contentHeight/2, 100, 100)
numericField.inputType = "number"
numericField.xScale = 1


-- create the incorrect  text object and make it invisible
incorrectObject = display.newText("incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(155/255, 255/255, 180/255)
incorrectObject.isVisible = false

--add the event listener fo the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

-----------------------------------------------------------------------------------------------------------------------------
-- function calls
-----------------------------------------------------------------------------------------------------------------------------



 

