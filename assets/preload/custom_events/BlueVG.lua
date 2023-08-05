local RedValue = 0
local RedEnable = false
function onCreate()
    makeLuaSprite('BlueImage','BlueVG',0,0)
    setObjectCamera('BlueImage','other')
    setProperty('BlueImage.alpha',0)
    addLuaSprite('BlueImage',true)
end

function onEvent(name,v1)
    if name == 'BlueVG' then
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
        doTweenAlpha('RedWOW','BlueImage',1,0.8,'linear')
        RedValue = 2
    elseif RedValue == -1 then
        doTweenAlpha('RedWOW','BlueImage',0,1,'linear')
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