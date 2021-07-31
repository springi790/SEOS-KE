-- this gets called starts when the level loads.
function start(song) -- arguments, the song name

end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame

end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song
    if beat == 61 then
        tweenPos(0,getActorX(0) - 100,getActorY(0) + 300,3)
        tweenPos(2,getActorX(2) + 50,getActorY(2) + 483,3)
        tweenPos(3,getActorX(3) + 100,getActorY(3) + 602,3)
		tweenAngle(0,getActorAngle(0) - 60, 3)
		tweenAngle(2,getActorAngle(1) + 30, 3)
		tweenAngle(3,getActorAngle(1) + 60, 3)
        for i=0,3 do
			tweenFadeOut(i,0, 3)
		end	
    end
end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)

end