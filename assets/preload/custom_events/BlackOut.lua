function onCreate()
	makeLuaSprite('black', 'blackscreen', -999, -999);
    scaleObject('black',999,999);
	addLuaSprite('black', true);
    setProperty('black.visible', false);
end
function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
    setProperty('black.visible', true);
		elseif value1 == 'false' then
    setProperty('black.visible', false);
		end
	end
end