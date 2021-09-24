function start (song)
	
	downscroll = false
	
    shakenote = true
end
function update (elapsed)
	local currentBeat = (songPos / 1000)*(bpm/60)
	
	if swap then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) + 350, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) - 275, i)
		end
	end
    if swapup then
		for i=0,3 do
			setActorY(_G['defaultStrum'..i..'Y'] + 200 * math.sin((currentBeat + i*0)) + 70, i)
		end
		for i=4,7 do
			setActorY(_G['defaultStrum'..i..'Y'] + 200 * math.sin((currentBeat + i*0)) + 70, i)
		end
	end
    if tweenreset then
        for i = 4,7 do -- go to the center
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do -- go to the center
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
           tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if spinpog then
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 50 * math.cos((currentBeat + i*0)) + 0, i)
		end
	end
    if water then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] - 256 * math.sin(currentBeat / 5) + 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 50 * math.cos(currentBeat) + 10,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 256 * math.sin(currentBeat / 5) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 50 * math.cos(currentBeat) + 10,i)
		end
	end
    if swayinglarge then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*1)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*1)) + 10, i)
		end
	end
    if shakenote then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 3 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 3 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
	end
end
function beatHit (beat)
    if camerabeat then
	    setCamZoom(1)
	end
	if camerahit then
	    setCamZoom(2)
	end
	if camerahit2 then
	    setCamZoom(3)
	end
end
--stair right
--    tweenPosYAngle(4, _G['defaultStrum4Y'] - 50,getActorAngle(4), 0.42, i)
  --  tweenPosYAngle(5, _G['defaultStrum5Y'] - 20,getActorAngle(5), 0.42, i)
  --  tweenPosYAngle(6, _G['defaultStrum6Y'] + 20,getActorAngle(6), 0.42, i)
  --  tweenPosYAngle(7, _G['defaultStrum7Y'] + 50,getActorAngle(7), 0.42, i)

-- stair left
--        tweenPosYAngle(4, _G['defaultStrum4Y'] + 50,getActorAngle(4), 0.42, i)
 ----     tweenPosYAngle(5, _G['defaultStrum5Y'] + 20,getActorAngle(5), 0.42, i)
 --       tweenPosYAngle(6, _G['defaultStrum6Y'] - 20,getActorAngle(6), 0.42, i)
  --      tweenPosYAngle(7, _G['defaultStrum7Y'] - 50,getActorAngle(7), 0.42, i)
function stepHit (step)  
    if step == 1024 then
        for i=0,7 do
            tweenFadeIn(i,0,0.1)
        end
    end
    if step == 1148 then
        for i=0,7 do
            tweenFadeIn(i,1,0.1)
        end
        water = true
        shakenote = false
    end
    if step == 1280 then
        water = false
        shakenote = true
    end
    if step == 1669 then
        for i=0,7 do
            tweenFadeIn(i,0,0.4)
        end
    end
end

function keyPressed (key)
    if curStep >= 335 and curStep < 344
    or curStep >= 352 and curStep < 359
    or curStep >= 368 and curStep < 377
    or curStep >= 384 and curStep < 399 
    or curStep >= 464 and curStep < 528
    then 
        if key == 'left' then 
            left = not left 
            if left then 
                tweenPosXAngle(4, _G['defaultStrum4X'], getActorAngle(4), 0.05, i)
            else 
                tweenPosXAngle(4, _G['defaultStrum4X'] - 40, getActorAngle(4), 0.05, i)
            end
        end
        if key == 'down' then 
            down = not down 
            if down then 
                tweenPosYAngle(5, _G['defaultStrum5Y'], getActorAngle(5), 0.05, i)
            else
                tweenPosYAngle(5, _G['defaultStrum5Y'] + 40, getActorAngle(5), 0.05, i)
            end
        end
        if key == 'up' then 
            up = not up 
            if up then 
                tweenPosYAngle(6, _G['defaultStrum6Y'], getActorAngle(6), 0.05, i)
            else 
                tweenPosYAngle(6, _G['defaultStrum6Y'] - 40, getActorAngle(6), 0.05, i)
            end
        end
        if key == 'right' then 
            right = not right 
            if right then 
                tweenPosXAngle(7, _G['defaultStrum7X'], getActorAngle(7), 0.05, i)
            else 
                tweenPosXAngle(7, _G['defaultStrum7X'] + 40, getActorAngle(7), 0.05, i)
            end
        end
    end
end

function reset()
	for i=0,7 do
		tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
	end
	camHudAngle = 0
end