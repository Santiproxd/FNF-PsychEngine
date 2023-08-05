local isitbadtomiss = false

function onEvent(name, value1, value2)
	if name == 'FC' then
		local value1s = tonumber(value1);
		if value1s == 1 then
		makeLuaText('value1', 'FC' .. getProperty('value1'), 200, 0, 200);
			addLuaText('FC');
			isitbadtomiss = true
		end

		if value1s == 0 then
		removeLuaText('value1', 'FC' .. getProperty('value1'), 200, 0, 200);
			removeLuaText('FC');
			isitbadtomiss = false
		end
	end

	--debugPrint('Event triggered: ', name, duration, targetAlpha);
end

function noteMiss(id, direction, noteType, isSustainNote)
	if isitbadtomiss == true then
		setProperty('health', -500);
	characterPlayAnim('boyfriend', 'hurt', true);
	characterPlayAnim('girlfriend', 'sad', true);
	end
end
