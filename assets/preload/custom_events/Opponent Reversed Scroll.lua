function onEvent(name)
    if name == 'Opponent Reversed Scroll' then
for i=0, 3 do
if getPropertyFromClass('ClientPrefs','downScroll') == false then
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
setPropertyFromGroup('opponentStrums',i,'y',568)
elseif getPropertyFromClass('ClientPrefs','downScroll') == true then
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
setPropertyFromGroup('opponentStrums',i,'y',50)
end
end
end
end