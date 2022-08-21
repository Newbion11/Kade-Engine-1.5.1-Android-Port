 -- this gets called starts when the level loads.
 function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame

end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song
    if beat == 108 then
        for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 1000,getActorAngle(i) + 360, 0.6, 'setDefault')
            end
            for i = 4, 7 do -- go to the center
                tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 0, 0.6, 'setDefault')
            end
    end

    if beat == 127 then
        for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 1000,getActorAngle(i) + 360, 0.6, 'setDefault')
            end
            for i = 4, 7 do -- go to the center
                tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 275,getActorAngle(i) + 0, 0.6, 'setDefault')
            end
    end

    if beat == 208 then
        for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 1000,getActorAngle(i) + 360, 0.6, 'setDefault')
            end
            for i = 4, 7 do -- go to the center
                tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 550,getActorAngle(i) + 0, 1, 'setDefault')
            end
    end

    if beat == 214 then
            for i = 4, 7 do -- go to the center
                tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 550,getActorAngle(i) + 0, 1, 'setDefault')
            end
    end

    if beat == 218 then
            for i = 4, 7 do -- go to the center
                tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 0, 0.6, 'setDefault')
            end
    end

    if beat == 242 then
        for i=0,3 do -- fade out the first 4 receptors (the ai receptors)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 1000,getActorAngle(i) + 360, 0.6, 'setDefault')
            end
        for i = 4, 7 do -- go to the center
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 275,getActorAngle(i) + 0, 0.3, 'setDefault')
        end
    end
end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)

end