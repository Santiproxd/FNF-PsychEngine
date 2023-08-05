function onCreate()
	makeLuaSprite('vignette', 'Stages/Forest/ambience', 0, 0)
    setObjectCamera('vignette', 'camHud')
	addLuaSprite('vignette', true)

	makeLuaSprite('jeffbg', 'Stages/Forest/Ground', -600, -338);
	setScrollFactor('jeffbg', 1, 1);
	addLuaSprite('jeffbg', false);

	scaleObject('jeffbg', 1.2, 1)

	close(true)
end