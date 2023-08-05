function onCreate()
	if not lowQuality then
		makeLuaSprite('sky', 'stages/woods/sky', -614.4, -355);
		setScrollFactor('sky', 0.1, 0.1);
		scaleObject('sky', 0.7, 0.7);
		
		makeLuaSprite('tree', 'stages/woods/backtree', -814.4, -625);
		setScrollFactor('tree', 0.4, 0.4);
		scaleObject('tree', 0.8, 0.8);

		makeLuaSprite('fog', 'stages/woods/fog', -814.4, -655);
		setScrollFactor('fog', 0.6, 0.6);
		scaleObject('fog', 0.8, 0.8);
		-- setShader('fog', 'heatver');

		makeLuaSprite('ground', 'stages/woods/ground', -814.4, -655);
		setScrollFactor('ground', 1, 1);
		scaleObject('ground', 0.8, 0.8);

		makeLuaSprite('trees', 'stages/woods/trees', -814.4, -655);
		setScrollFactor('trees', 1, 1);
		scaleObject('trees', 0.8, 0.8);

		makeLuaSprite('forefog', 'stages/woods/forefog', -814.4, -655);
		setScrollFactor('forefog', 1.1, 0.15);
		scaleObject('forefog', 0.8, 0.8);
		-- setShader('forefog', 'flag');
		
	    makeAnimatedLuaSprite('DAambience', 'Stages/woods/ambience', -135, -26);
	    addAnimationByPrefix('DAambience', 'loop', 'ambience0', 24, true);
	    setObjectCamera('DAambience','hud')
        objectPlayAnimation('DAambience', 'loop');
	    

		addLuaSprite('sky', false);
		addLuaSprite('tree', false);
		addLuaSprite('fog', false);
		addLuaSprite('ground', false);
		addLuaSprite('trees', true);
		addLuaSprite('forefog', true);
		addLuaSprite('DAambience', true);
        end
end