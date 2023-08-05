function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "Lyrics 2" then

        makeLuaText('captions2', 'Lyrics go here', 1000, 150, 580)
        setTextString('captions2',  '' .. string)
        setTextColor('captions2', 'ffffff')
        setTextSize('captions2', 35);
        addLuaText('captions2')
	setObjectCamera('captions2', 'other');
        setTextAlignment('captions2', 'center')
        --removeLuaText('captions', true)
        
    end
end

