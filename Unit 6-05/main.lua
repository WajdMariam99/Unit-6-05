-----------------------------------------------------------------------------------------
--
-- Created by: Wajd Mariam
-- Created on: April 16, 2019
-----------------------------------------------------------------------------------------

local EnterButton = display.newImageRect ("assets/sprites/enterbutton.png", 125, 50 )
EnterButton.x = 160
EnterButton.y = 450
EnterButton.id = "Enter Button"


local Title1 = display.newText ("Your age:", 160 , 200, native.systemFont, 20)
Title1: setFillColor ( 255,255,255 )


local Title2 = display.newText ("What day is it today:" , 160 , 310, native.systemFont, 20)
Title2: setFillColor ( 255,255,255 )


local AgeTextField = native.newTextField ( display.contentCenterX, display.contentCenterY + 5, 225, 40 )
AgeTextField.id = " Age "


local DayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 115, 225, 40)
DayTextField.id = " Day "


local ResponseText = display.newText ( "What are you going to be doing today?" , 160 , 130, native.systemFont, 20)
ResponseText: setFillColor ( 255,255,255 )


local function EnterButtonTouch( event )

    age = tonumber ( AgeTextField.text )
    
    day = ( DayTextField.text )

if ( age > 7 ) and (day == "Saturday" or day == "Sunday")then
	ResponseText.text = "Time to relax for weekend!"

	elseif ( age > 18 ) and ( day ~= "Saturday" or day ~= "Sunday") then
    ResponseText.text = "Time to go to work!"

    elseif ( age < 18 ) and ( day ~= "Saturday" or day ~= "Sunday") then
    	ResponseText.text = "Time to go to school!"
end


end

EnterButton :addEventListener ( "touch" , EnterButtonTouch) 