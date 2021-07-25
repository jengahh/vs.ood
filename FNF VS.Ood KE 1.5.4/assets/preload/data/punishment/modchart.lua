function start (song)

end

function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
	if lockzoom then
		setCamZoom(1)
	end
	if swayingsmall then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if swayinglarge then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
	end
	if swayingbigger then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) ,i)
		end
	end
	if swayingbiggest then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
	end
	if swayingbiggest2 then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) + 350, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat + i*5) * math.pi),i)
		end
	end
    if bruh then
		
        for i=0,3 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 65, getActorAngle(i) - 280, 0.1, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 25 * math.sin((currentBeat + i*4.2) * math.pi) ,i)
			setActorX(_G['defaultStrum'..i..'X'] -22* math.cos((currentBeat + i*5.3) * math.pi), i)
			setActorX(_G['defaultStrum'..i..'X'] + 74 * math.sin((currentBeat + i*0) * math.pi), i)
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 99, getActorAngle(i) - 370, 66, i)
			setActorY(_G['defaultStrum'..i..'X'] -60 * math.cos((currentBeat + i*7.7) * math.pi) ,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 74 * math.sin((currentBeat + i*0) * math.pi), i)
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 99, getActorAngle(i) - 370, 66, i)
			setActorY(_G['defaultStrum'..i..'X'] -60 * math.cos((currentBeat + i*7.7) * math.pi) ,i)
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 65, getActorAngle(i) - 280, 0.1, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 25 * math.sin((currentBeat + i*4.2) * math.pi) ,i)
			setActorX(_G['defaultStrum'..i..'X'] -22* math.cos((currentBeat + i*5.3) * math.pi), i)
        end
    end

end


function beatHit (beat)
	if camerabeat then
		setCamZoom(5)
	end
end

function stepHit (step)
	if step == 1 then
        bruh = true
	end
	if step == 2506 then
	for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'],i)
            setActorY(_G['defaultStrum'..i..'Y'],i)
    end
	bruh = false
	end
end