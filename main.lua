-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March
--
-- this program determines what the user has to do on the day inputed
-----------------------------------------------------------------------------------------

-- Display
display.setDefault('background', 0, 0.2, 0.2)
local myTitle = display.newText('What do you have to do today?', display.contentCenterX, 150, native.SystemFont, 100)

-- Elements for the day
local textBoxDay = native.newTextField(display.contentCenterX + 150, 400, 400, 150)
textBoxDay.id = 'The day'
local dayQuestion = display.newText('What day is it today?', 480, 400, native.SystemFont, 100)

-- Elements for the age
local ageQuestion = display.newText('What is your age?', 420, 600, native.SystemFont, 100)
local textBoxAge = native.newTextField(display.contentCenterX + 50, 600, 400, 150)
textBoxAge.id = 'The age'

--Initiation button
local myButton = display.newImageRect('./Assets/Sprites/enterButton.png', 350, 250)
myButton.x = display.contentCenterX + 600
myButton.y = 500
myButton.id = 'The button'

-- Result statement
local myResult = display.newText('', display.contentCenterX, 1000, native.SystemFont, 100)

-- Function
local function dailyActivities(event)
	-- Variables
	local theDay = (textBoxDay.text)
	local theAge = tonumber(textBoxAge.text)

	-- If statement
	if theDay == 'Saturday' or theDay == 'Sunday' then
		myResult.text = 'You can go relax!!'
	elseif theAge > 18 then
		myResult.text = 'You have to work!!'
	else
		myResult.text = 'You have to go to school!!'
	end
end

-- Event Listener
myButton:addEventListener('touch', dailyActivities)