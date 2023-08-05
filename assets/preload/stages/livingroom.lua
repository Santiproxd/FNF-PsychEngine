function onCreate()
	makeAnimatedLuaSprite('DAambience', 'Stages/livingroom/candles', 778.25, 1010.5);
	addAnimationByPrefix('DAambience', 'loop', 'candles', 24, true);
	addLuaSprite('DAambience', true);
	objectPlayAnimation('DAambience', 'loop');

	makeLuaSprite('jeffbg', 'Stages/livingroom/ambience', 0, 0);
	setObjectCamera('jeffbg','hud')
	setScrollFactor('jeffbg', 1, 1);
	addLuaSprite('jeffbg', false);

	makeLuaSprite('treeoverlay', 'Stages/livingroom/livingroom', 0, 0);
	setScrollFactor('treeoverlay', 1, 1);
	addLuaSprite('treeoverlay', false);

end
function onCreatePost()
setProperty("gf.visible", false);
setProperty("iconP2.visible", false);
setProperty("iconP1.visible", false);
setProperty("healthBar.visible", false);
setProperty("healthBarBG.visible", false);
setProperty("scoreTxt.visible", false);
end