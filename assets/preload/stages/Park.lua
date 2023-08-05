function onCreate()
	
	makeAnimatedLuaSprite('DAambience', 'Stages/Park/ambience', -135, -26);
	addAnimationByPrefix('DAambience', 'loop', 'ambience0', 24, true);
	setObjectCamera('DAambience','hud')
	addLuaSprite('DAambience', true);
	objectPlayAnimation('DAambience', 'loop');

	makeLuaSprite('jeffbg', 'Stages/Park/normaljeffbg', -800.2, -338);
	setScrollFactor('jeffbg', 1, 1);
	addLuaSprite('jeffbg', false);

	makeLuaSprite('treeoverlay', 'Stages/Park/treeoverlay', -960.35, -438);
	setScrollFactor('treeoverlay', 0.7, 0.7);
	addLuaSprite('treeoverlay', true);

	scaleObject('jeffbg', 3.1, 3.1)
	scaleObject('treeoverlay', 1, 1)

	close(true)
end