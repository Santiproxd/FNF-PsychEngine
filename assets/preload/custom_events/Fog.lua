local RedValue = 0
local RedEnable = false
function onCreate()
    makeLuaSprite('Fog','Stages/Mansion/SeekFog',0,0)
    setObjectCamera('Fog','other')
    setProperty('Fog.alpha',0)
    addLuaSprite('Fog',true)
end

function onEvent(name,v1)
    if name == 'Fog' then
        if v1 ~= false and v1 ~= 'False' and v1 ~= 'false' then
            RedValue = -1
            RedEnable = true
        else
            RedEnable = false
            RedValue = -1
        end
    end
end

function onUpdate()
    if RedValue == 1 then
        doTweenAlpha('RedWOW','Fog',0.6,0.10,'linear')
        RedValue = 2
    elseif RedValue == -1 then
        doTweenAlpha('RedWOW','Fog',0,1,'linear')
        RedValue = -2
    end
end

function onBeatHit()
    if curBeat % 2 == 0 then
        if RedValue < 0 and RedEnable == true then
            RedValue = 1
        elseif RedValue > 0 and RedEnable == true then
            RedValue = -1
        end
    end
end