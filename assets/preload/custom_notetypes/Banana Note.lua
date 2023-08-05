local getGum = {'customNotes/effects/squish1', 'customNotes/effects/squish2', 'customNotes/effects/squish3'}
local currentAmt = 0
local gumCombo = 0

function onCreate()

    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Banana Note' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'customNotes/BANANANOTE_assets');
            setPropertyFromGroup('unspawnNotes', i, 'noteSplashDisabled', true);
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
				setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
            end
        end
    end

    for a = 1, 3 do
        precacheImage(getGum[a]);
    end
    precacheSound('Banana');

end

function goodNoteHit(i, d, n, s)
    if n == 'Banana Note' then
        if not s then
            gumInt = getRandomInt(1, 3)
            currentAmt = currentAmt + 1
            gumCombo = gumCombo + 1
            gumed(gumInt, currentAmt, gumCombo);
        end
    end
end

function gumed(gumInt, currentAmt, gumCombo)

    image = getGum[gumInt]

    playSound('Banana');

    makeLuaSprite('a'..gumCombo, image, 0, 0);
    setProperty('a'..gumCombo..'.alpha', 0);
    doTweenAlpha('a'..gumCombo, 'a'..gumCombo, 0.75, 0.25, 'linear');
    setObjectCamera('a'..gumCombo, 'camHUD');
    addLuaSprite('a'..gumCombo, true);
    runTimer('a'..gumCombo, 10);

end

function onTimerCompleted(t)
    if t == 'a'..gumCombo then
        for b = 1, gumCombo do
            doTweenAlpha('a'..b, 'a'..b, 0, 0.25, 'linear');
        end
    end
end

function onTweenCompleted(t)
    if t == 'a'..b then
        for c = 1, b do
            removeLuaSprite('a'..c, true);
        end
    end
end