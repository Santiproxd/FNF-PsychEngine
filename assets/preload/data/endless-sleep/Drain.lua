function opponentNoteHit()
    health = getProperty('health')
	if curStep >= 272 and curStep < 9176 then
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.028);
    end
end
end