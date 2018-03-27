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
local textBoxAge = native.newTextField(display.contentCenterX, 600, 400, 150)