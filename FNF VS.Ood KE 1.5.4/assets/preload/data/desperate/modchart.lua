function start (song)
	
	downscroll = false
    
	
    for i = 0,3 do 
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 370,getActorAngle(i) + 360, 0.1, 'setDefault')
    end
	for i = 4,7 do 
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 270,getActorAngle(i) + 360, 0.1, 'setDefault')
    end
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
	if step == 13 then
		for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end 
	end
    if step == 32 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 2,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 2,getActorAngle(i) + 360, 0.1, 'setDefault')
        end 
    end
    if step == 48 then
        for i = 4,7 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 400,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        
    end
    if step == 64 then
        for i = 0,3 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 400,getActorAngle(i) + 360, 0.1, 'setDefault')
         end 
        for i = 4,7 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 80 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end 
    end
    if step == 96 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end 
    end
    if step == 112 then
        for i = 0,3 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
         end 
        for i = 4,7 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 400,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 128 then
        for i = 0,3 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
         end 
        for i = 4,7 do 
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 208 then
		swap = true
	end
    if step == 224 then
        reset()
        swap = false
		swapup = true
	end
    if step == 272 then
        swap = false
		swapup = false
         
    end
    if step == 275 then
        swap = false
		swapup = false
        for i = 4,7 do -- go to the center
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do -- go to the center
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
           tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 288 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 304 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 320 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 336 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 400 then
        for i = 4,7 do -- go to the center
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
            tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do -- go to the center
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
           tweenPosYAngle(i, _G['defaultStrum'..i..'Y'] + 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 644 then
        for i=0,3 do
            tweenFadeIn(i,0,0.6)
        end
    end
    if step == 656 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 270,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 370,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 532 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 0,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 783 then
        water = true
    end
    if step == 903 then
        camerahit = true
    end
    if step == 911 then
        camerahit = false
        water = false
        for i=0,3 do
            tweenFadeIn(i,1,0.1)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 370,getActorAngle(i) + 360, 0.1, 'setDefault')
            
        end
        for i=4,7 do
            tweenFadeIn(i,0,0.6)
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 270,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        
    end
    if step == 1038 then
        for i=0,3 do
            tweenFadeIn(i,0,0.6)
        end
        for i=4,7 do
            tweenFadeIn(i,1,0.01)
        end
    end
    if step == 1041 then
        swap = true
    end
    if step == 1055 then
        spinpog = true
    end
    if step == 1167 then
        spinpog = false
        swap = false
        reset()
        for i=0,7 do
        tweenFadeIn(i,1,0.1)
        end
    end
    if step == 1247 or step == 1279 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 640,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 1263 or step == 1349 then
        for i = 4,7 do 
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 2,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
        for i = 0,3 do 
           tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 2,getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if step == 1423 then
        for i=0,7 do
            tweenFadeIn(i,0.3,0.1)
         end
    end
    if step == 1663 then
        camerahit = true
    end
    if step == 1678 then
        camerahit = false
        for i=0,7 do
           tweenFadeIn(i,0,0.6)
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