function setCameraPos(x, y, forced)
    setProperty('camFollow.x', x)
    setProperty('camFollow.y', y)
    setProperty('cameraSpeed', 10000)
    runTimer('wee', 0.1)
	runTimer('waou', 0.5)
    if forced then
        triggerEvent('Camera Follow Pos', x, y)
    else
        triggerEvent('Camera Follow Pos', '', '')
    end
end
function onEvent(name, value1, value2)
	if name == 'camera target' then
		if value1 == 'dad' then
		setCameraPos(500, 500, true)
		end
		if value1 == 'boyfriend' then
			setCameraPos(1000, 600, true)
		end
	end
end
function onTimerCompleted(t, l, ll)
   if t == 'waou' then
	triggerEvent('Camera Follow Pos', '', '')
   end
    if t == 'wee' then
        setProperty('cameraSpeed', 1.73)
    end
end
