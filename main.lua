-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
-----------------------------------------------------------------------------------------

--Will set up gui

display.setDefault( "background", 1, 1, 1 )

local answerOne

local answerTwo

local button = display.newImageRect( "./assets/sprite/enterButton.png", 500, 300)
button.x = 1000
button.y = 1000

local textboxone = native.newTextField( 1000, 350, 350, 150)

local textboxtwo = native.newTextField( 1000, 650, 350, 150)

local directions = display.newText( "Do You Get A Discount", display.contentCenterX, 100, native.systemFont, 120)
directions:setTextColor( 0, 0, 0)

local directionsTwo = display.newText( "Enter Day of the Week", 400, 650, native.systemFont, 75)
directionsTwo:setTextColor( 0, 0, 0)

local directionsThree = display.newText( "Enter your Age", 400, 350, native.systemFont, 75)
directionsThree:setTextColor( 0, 0, 0)

local function onButtonPressed( event )
	-- will define sum variables
	local answerOne = tonumber(textboxone.text)
	local answerTwo = (textboxtwo.text)
	--print(answerOne)
	--print(answerTwo)
	if answerOne >= 12 and answerOne <= 21 or answerTwo == "Tuesday" or answerTwo == "tuesday" or answerTwo == "Thursday" or answerTwo == "thrusday" then
		--print("hello")
		textboxone.isVisible = false
		textboxtwo.isVisible = false
		button.isVisible = false
		directionsTwo.isVisible = false
		directionsThree.isVisible = false
		local discountprice = display.newText( "You get a Discount", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		discountprice:setTextColor( 0, 0, 0)
	else
		local nodiscount = display.newText( "You Don't get a Discount", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		nodiscount:setTextColor( 0, 0, 0)
		textboxone.isVisible = false
		textboxtwo.isVisible = false
		button.isVisible = false
		directionsTwo.isVisible = false
		directionsThree.isVisible = false


	end	

end


button:addEventListener( "touch", onButtonPressed)