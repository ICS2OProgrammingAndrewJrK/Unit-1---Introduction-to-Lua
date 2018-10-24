-- Title: LivesAndTimers
-- Name: Anderw Jr
-- Course: ICS2O/3C
-- This program...

--hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour 
display.setDefault("background", 40/255, 10/255, 10/255)

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

--varible for the timer
local totalSeconds = 5
local secondsLeft = 5
local clockText
local countDownTimer

local lives = 5
local heart1
local heart2
local heart3
local heart4


--*** ADD LOCAL VARIABLE FOR: INCORRECT OBJECT, POINTS OBJECT, POINTS

------------------------------------------------------------------------------------
-- SOUND
------------------------------------------------------------------------------------


local correctSoundSound = audio.loadSound("Sound/correctSound.mp3")--Setting a variable to an mp3 file
local correctSoundSoundChannel

local wrongSoundSoundSound = audio.loadSound("Sound/wrongSound.mp3")


------------------------------------------------------------------------------------
-- local functions 
------------------------------------------------------------------------------------

local function UpdateTime()

	--decrement the numder of secounds
	secondsLeft = secondsLeft - 1

	--display the numder of seconds left in the clock odject 
	clockText.text = secondsleft .. ""
    

    if (secondsLeft == 0 ) then
    	-- reset the numder of seconds left
    	secondsLeft = totalSeconds
    	lives = lives - 1

    	-- *** IF THERE ARE NO LIVES LEFT, PLAY A LOSE SOUNDS, SHOW AYOU LOSE IMAGE
    	-- AND CANCEL THE TIMER REMOVER THE THIRD HEART BY MAKING IT INVISIBLE
    	if (lives == 2) then
    		heart2.invisible = false
    	elseif (lives == 1) then
    		heart1.isVisible = false
    	end

    	-- *** CALL THE FUNCTION TO ASK A NEW QUESTION
    
    end
end


-- function that calls the timer
local function Starttimer()
   -- creat a countdown timer that loops infinitely
   countDownTimer  = timer.performWithDelay( 1000, UpdateTme, 0)
end  



local function AskQuestion()
	--generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(0,3)
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

local function UpdateHeart()
	if (lives == 4) then
		   heart4.invisible = false
		elseif(lives == 3) then
    		heart3.invisible = false
		elseif(lives == 2) then
    		heart2.invisible = false
    	elseif (lives == 1) then
    		heart1.isVisible = false
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
			correctSoundSoundChannel = audio.play(correctSoundSound)
			timer.performWithDelay(2000,HideCorrect)
		else 
			correctObject.isVisible = false 
			incorrectObject.isVisible = true
			wrongSoundSoundSoundChannel = audio.play(wrongSoundSoundSound)
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
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(200/255, 255/255, 180/255)

-- create the correct  text object and make it invisible
correctObject = display.newText("correct, Well done!", display.contentWidth/2, display.contentHeight*2/3, nil, 90)
correctObject:setTextColor(100/255, 200/255, 180/255)
correctObject.isVisible = false

-- create numeric field 
numericField = native.newTextField(display.contentWidth/2, display.contentHeight/2, 100, 100)
numericField.inputType = "number"
numericField.xScale = 2
numericField.yScale = 1

-- create the incorrect  text object and make it invisible
incorrectObject = display.newText("incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 90)
incorrectObject:setTextColor(15/255, 255/255, 18/255)
incorrectObject.isVisible = false

--add the event listener fo the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

-- create the liver to display on the screen
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7
 
heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

heart3 = display.newImageRect("Images/heart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 1 / 7

heart4 = display.newImageRect("Images/heart.png", 100, 100)
heart4.x = display.contentWidth * 4 / 8
heart4.y = display.contentHeight * 1 / 7

-----------------------------------------------------------------------------------------------------------------------------
-- function calls
-----------------------------------------------------------------------------------------------------------------------------

-- call the functionto as the Question
AskQuestion()