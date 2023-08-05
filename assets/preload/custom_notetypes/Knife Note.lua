function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Knife Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'customNotes/knife_notes'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Knife Note' then
		if getProperty('dad.curCharacter') == 'jeffinsane' then -- So it doesn't crash(?) idk how lua works
			characterPlayAnim('dad', 'stab', true);
			setProperty('dad.specialAnim', true);
		end
		if getProperty('boyfriend.curCharacter') == 'Trep_bfBLOOD' then
			characterPlayAnim('boyfriend', 'hurt', true);
			setProperty('boyfriend.specialAnim', true);
		end
		if trepDiff == 0 then
			if getHealth() >= 0.4 then
				setProperty('health', getProperty('health')/2);
			end
		elseif trepDiff == 1 then
			setProperty('health', getProperty('health')-0.75);
		else
			setProperty('health', 0);
		end
	end
end