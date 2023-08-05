function onCreate()
	makeLuaSprite('black', 'Stages/Room/BG', -1200, -300);
	setScrollFactor('black', 1, 1);
    scaleObject('black', 3,3);
	addLuaSprite('black', false);
	makeLuaSprite('shadow', 'Stages/Room/Bottom Light', -1200, -300);
	setScrollFactor('shadow', 1, 1);
    scaleObject('shadow', 3,3);
	addLuaSprite('shadow', false);	
	makeLuaSprite('table', 'Stages/Room/Table', -1200, -300);
	setScrollFactor('table', 1, 1);
    scaleObject('table', 3,3);
	addLuaSprite('table', false);
	makeLuaSprite('phone', 'Stages/Room/Phone', -1200, -300);
	setScrollFactor('phone', 1, 1);
    scaleObject('phone', 3,3);
	addLuaSprite('phone', false);
	makeLuaSprite('light', 'Stages/Room/Top Light', -1200, -300);
	setScrollFactor('light', 1, 1);
    scaleObject('light', 3,3);
	addLuaSprite('light', true);		
end	
function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('boyfriend.alpha', 0)	
    
end