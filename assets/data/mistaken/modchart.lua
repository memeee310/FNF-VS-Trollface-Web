local normal = false

local weee = false

local bopping = false
local bopping2 = false


function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
    if weee then
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*7)), i)
            setActorY(_G['defaultStrum'..i..'Y'],i)
        end
        camHudAngle = 10 * math.sin(currentBeat * math.pi)
        cameraAngle = 10 * math.sin(currentBeat * math.pi)
    end
end



function beatHit (beat)
	if bopping then
		setCamZoom(1)
	end
    if bopping2 then
		setHudZoom(1.25)
	end
end




function stepHit (step)
	if step == 512 then
		weee = true
        bopping = true
    end
    if step == 1152 then
        bopping2 = true
        changeDadCharacter("trolling2e")
    end
    if step == 1472 then
        bopping2 = false
        changeDadCharacter("trolling3")
    end
end