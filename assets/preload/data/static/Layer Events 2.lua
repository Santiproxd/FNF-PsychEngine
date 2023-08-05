function onCreate()
	makeAnimatedLuaSprite('glowing thing','Stages/Woods/static',0,0)addAnimationByPrefix('glowing thing', 'idle','static idle',15,true)
	objectPlayAnimation('glowing thing','idle',true)
	setScrollFactor('glowing thing', 0,0);
	scaleObject('glowing thing',4,4);
	setObjectCamera('glowing thing', 'camHud')
end
function onEvent(n,v,b)
if n == 'Change Character' then
if b == 'gf' then
addLuaSprite('glowing thing', true);
else if b == 'bf' then
removeLuaSprite('glowing thing', false);
end
end
end
end