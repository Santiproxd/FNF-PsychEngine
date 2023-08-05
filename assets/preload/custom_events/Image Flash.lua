function onEvent(name, value1, value2)
    if name == 'Image Flash' then
        makeLuaSprite('Flash/image', value1, 0, 0);
        addLuaSprite('Flash/image', true);
        scaleObject('Flash/image', 0.7, 0.7);
        doTweenColor('hello', 'Flash/image', 'FFFFFFFF', 0.1, 'quartIn');
        setObjectCamera('Flash/image', 'other');
        runTimer('wait', value2);
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
                doTweenAlpha('byebye', 'Flash/image', 0, 0.1, 'linear');
            end
        end
        
        function onTweenCompleted(tag)
            if tag == 'byebye' then
                removeLuaSprite('Flash/image', false);
            end
        end
    end
end