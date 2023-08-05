

function onEvent(name, v1) 
    if (name == 'funky') then
        print('gays')
        --runHaxeCode([[game.PauseSubState.restartSong();]]);
        restartSong(true);
        setPropertyFromClass('PlayState','deathCounter',715201519125516);
    end
end

function onCreate()
    if (getPropertyFromClass('PlayState','deathCounter') > 715201519125515) then
        setProperty('skipCountdown', true)
    end
 end

 function onUpdate() 
    setProperty('timeTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
 end