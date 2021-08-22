function start(song) -- arguments, the song name

end

function update(elapsed) -- arguments, how long it took to complete a frame
	if curStep >= 128 and curStep < 2432 then
		local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,7 do
            setActorAngle(getActorAngle(i) + 15, i)
        end
    end
end

function stepHit(step) 
	if curStep >= 896 and curStep < 1152 then
        local currentBeat = (songPos / 1000)*(bpm/174)
        for i=0,7 do
            setActorX(_G['defaultStrum'..i..'X'] + 20 * math.sin((currentBeat + i*0.25) * math.pi), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 15 * math.cos((currentBeat + i*0.25) * math.pi), i)
         end
    else
        	for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'],i)
			setActorY(_G['defaultStrum'..i..'Y'],i)
        	end
	end
end



