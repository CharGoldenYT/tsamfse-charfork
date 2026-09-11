splash = {'note splash purple','note splash blue','note splash green','note splash red'}
splashEnd = {'holdCoverEndPurple','holdCoverEndBlue','holdCoverEndGreen','holdCoverEndRed'}
hold = {"holdCoverPurple","holdCoverBlue","holdCoverGreen","holdCoverRed"}
offsetX = -110
offsetY = -100

local Number = 0
local alpha = 1
local sick = 0

function onUpdate()
	--SPLASH END
	setProperty('playerSplashPurpleEnd.x',getPropertyFromGroup('playerStrums', 0, 'x') + offsetX)
	setProperty('playerSplashPurpleEnd.y',getPropertyFromGroup('playerStrums', 0, 'y') + offsetY)

	setProperty('playerSplashBlueEnd.x',getPropertyFromGroup('playerStrums', 1, 'x') + offsetX)
	setProperty('playerSplashBlueEnd.y',getPropertyFromGroup('playerStrums', 1, 'y') + offsetY)

	setProperty('playerSplashGreenEnd.x',getPropertyFromGroup('playerStrums', 2, 'x') + offsetX)
	setProperty('playerSplashGreenEnd.y',getPropertyFromGroup('playerStrums', 2, 'y') + offsetY)

	setProperty('playerSplashRedEnd.x',getPropertyFromGroup('playerStrums', 3, 'x') + offsetX)
	setProperty('playerSplashRedEnd.y',getPropertyFromGroup('playerStrums', 3, 'y') + offsetY)

	--PLAYER HOLD
	setProperty('playerSplashPurpleHold.x',getPropertyFromGroup('playerStrums', 0, 'x') + offsetX)
	setProperty('playerSplashPurpleHold.y',getPropertyFromGroup('playerStrums', 0, 'y') + offsetY)

	setProperty('playerSplashBlueHold.x',getPropertyFromGroup('playerStrums', 1, 'x') + offsetX)
	setProperty('playerSplashBlueHold.y',getPropertyFromGroup('playerStrums', 1, 'y') + offsetY)

	setProperty('playerSplashGreenHold.x',getPropertyFromGroup('playerStrums', 2, 'x') + offsetX)
	setProperty('playerSplashGreenHold.y',getPropertyFromGroup('playerStrums', 2, 'y') + offsetY)

	setProperty('playerSplashRedHold.x',getPropertyFromGroup('playerStrums', 3, 'x') + offsetX)
	setProperty('playerSplashRedHold.y',getPropertyFromGroup('playerStrums', 3, 'y') + offsetY)

	--OPPONENT HOLD
	setProperty('opponentSplashPurpleHold.x',getPropertyFromGroup('opponentStrums', 0, 'x') + offsetX)
	setProperty('opponentSplashPurpleHold.y',getPropertyFromGroup('opponentStrums', 0, 'y') + offsetY)

	setProperty('opponentSplashBlueHold.x',getPropertyFromGroup('opponentStrums', 1, 'x') + offsetX)
	setProperty('opponentSplashBlueHold.y',getPropertyFromGroup('opponentStrums', 1, 'y') + offsetY)

	setProperty('opponentSplashGreenHold.x',getPropertyFromGroup('opponentStrums', 2, 'x') + offsetX)
	setProperty('opponentSplashGreenHold.y',getPropertyFromGroup('opponentStrums', 2, 'y') + offsetY)

	setProperty('opponentSplashRedHold.x',getPropertyFromGroup('opponentStrums', 3, 'x') + offsetX)
	setProperty('opponentSplashRedHold.y',getPropertyFromGroup('opponentStrums', 3, 'y') + offsetY)

	if keyPressed('left') or getProperty('cpuControlled') == true then
		setProperty('playerSplashPurpleHold.visible',true)
	else
		setProperty('playerSplashPurpleHold.visible',false)
	end

	if keyPressed('down') or getProperty('cpuControlled') == true then
		setProperty('playerSplashBlueHold.visible',true)
	else
		setProperty('playerSplashBlueHold.visible',false)
	end

	if keyPressed('up') or getProperty('cpuControlled') == true then
		setProperty('playerSplashGreenHold.visible',true)
	else
		setProperty('playerSplashGreenHold.visible',false)
	end

	if keyPressed('right') or getProperty('cpuControlled') == true then
		setProperty('playerSplashRedHold.visible',true)
	else
		setProperty('playerSplashRedHold.visible',false)
	end

end

function onCreatePost() 
		makeAnimatedLuaSprite('playerSplashPurpleEnd','holdCoverPurple',getPropertyFromGroup('playerStrums', 0, 'x') + offsetX, getPropertyFromGroup('playerStrums', 0 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashPurpleEnd', 'idle',splashEnd[1],20,false)
		setProperty('playerSplashPurpleEnd.alpha',0)
		setObjectCamera('playerSplashPurpleEnd', 'camHUD')
		objectPlayAnimation('playerSplashPurpleEnd','idle',false)
		addLuaSprite('playerSplashPurpleEnd',true);

		makeAnimatedLuaSprite('playerSplashBlueEnd','holdCoverBlue',getPropertyFromGroup('playerStrums', 1, 'x') + offsetX, getPropertyFromGroup('playerStrums', 1 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashBlueEnd', 'idle',splashEnd[2],20,false)
		setProperty('playerSplashBlueEnd.alpha',0)
		setObjectCamera('playerSplashBlueEnd', 'camHUD')
		objectPlayAnimation('playerSplashBlueEnd','idle',false)
		addLuaSprite('playerSplashBlueEnd',true);

		makeAnimatedLuaSprite('playerSplashGreenEnd','holdCoverGreen',getPropertyFromGroup('playerStrums', 2, 'x') + offsetX, getPropertyFromGroup('playerStrums', 2, 'y') + offsetY)
		addAnimationByPrefix('playerSplashGreenEnd', 'idle',splashEnd[3],20,false)
		setProperty('playerSplashGreenEnd.alpha',0)
		setObjectCamera('playerSplashGreenEnd', 'camHUD')
		objectPlayAnimation('playerSplashGreenEnd','idle',false)
		addLuaSprite('playerSplashGreenEnd',true);

		makeAnimatedLuaSprite('playerSplashRedEnd','holdCoverRed',getPropertyFromGroup('playerStrums', 3, 'x') + offsetX, getPropertyFromGroup('playerStrums', 3 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashRedEnd', 'idle',splashEnd[4],20,false)
		setProperty('playerSplashRedEnd.alpha',0)
		setObjectCamera('playerSplashRedEnd', 'camHUD')
		objectPlayAnimation('playerSplashRedEnd','idle',false)
		addLuaSprite('playerSplashRedEnd',true);

		makeAnimatedLuaSprite('playerSplashPurpleHold','holdCoverPurple',getPropertyFromGroup('playerStrums', 0, 'x') + offsetX, getPropertyFromGroup('playerStrums', 0 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashPurpleHold', 'idle',hold[1],24,true)
		setProperty('playerSplashPurpleHold.alpha',0)
		setObjectCamera('playerSplashPurpleHold', 'camHUD')
		objectPlayAnimation('playerSplashPurpleHold','idle',true)
		addLuaSprite('playerSplashPurpleHold',true);

		makeAnimatedLuaSprite('playerSplashBlueHold','holdCoverBlue',getPropertyFromGroup('playerStrums', 1, 'x') + offsetX, getPropertyFromGroup('playerStrums', 1 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashBlueHold', 'idle',hold[2],24,true)
		setProperty('playerSplashBlueHold.alpha',0)
		setObjectCamera('playerSplashBlueHold', 'camHUD')
		objectPlayAnimation('playerSplashBlueHold','idle',true)
		addLuaSprite('playerSplashBlueHold',true);

		makeAnimatedLuaSprite('playerSplashGreenHold','holdCoverGreen',getPropertyFromGroup('playerStrums', 2, 'x') + offsetX, getPropertyFromGroup('playerStrums', 2, 'y') + offsetY)
		addAnimationByPrefix('playerSplashGreenHold', 'idle',hold[3],24,true)
		setProperty('playerSplashGreenHold.alpha',0)
		setObjectCamera('playerSplashGreenHold', 'camHUD')
		objectPlayAnimation('playerSplashGreenHold','idle',true)
		addLuaSprite('playerSplashGreenHold',true);

		makeAnimatedLuaSprite('playerSplashRedHold','holdCoverRed',getPropertyFromGroup('playerStrums', 3, 'x') + offsetX, getPropertyFromGroup('playerStrums', 3 , 'y') + offsetY)
		addAnimationByPrefix('playerSplashRedHold', 'idle',hold[4],24,true)
		setProperty('playerSplashRedHold.alpha',0)
		setObjectCamera('playerSplashRedHold', 'camHUD')
		objectPlayAnimation('playerSplashRedHold','idle',true)
		addLuaSprite('playerSplashRedHold',true);

		makeAnimatedLuaSprite('opponentSplashPurpleHold','holdCoverPurple',getPropertyFromGroup('opponentStrums', 0, 'x') + offsetX, getPropertyFromGroup('opponentStrums', 0 , 'y') + offsetY)
		addAnimationByPrefix('opponentSplashPurpleHold', 'idle',hold[1],24,true)
		setProperty('opponentSplashPurpleHold.alpha',0)
		setObjectCamera('opponentSplashPurpleHold', 'camHUD')
		objectPlayAnimation('opponentSplashPurpleHold','idle',true)
		addLuaSprite('opponentSplashPurpleHold',true);

		makeAnimatedLuaSprite('opponentSplashBlueHold','holdCoverBlue',getPropertyFromGroup('opponentStrums', 1, 'x') + offsetX, getPropertyFromGroup('opponentStrums', 1 , 'y') + offsetY)
		addAnimationByPrefix('opponentSplashBlueHold', 'idle',hold[2],24,true)
		setProperty('opponentSplashBlueHold.alpha',0)
		setObjectCamera('opponentSplashBlueHold', 'camHUD')
		objectPlayAnimation('opponentSplashBlueHold','idle',true)
		addLuaSprite('opponentSplashBlueHold',true);

		makeAnimatedLuaSprite('opponentSplashGreenHold','holdCoverGreen',getPropertyFromGroup('opponentStrums', 2, 'x') + offsetX, getPropertyFromGroup('opponentStrums', 2, 'y') + offsetY)
		addAnimationByPrefix('opponentSplashGreenHold', 'idle',hold[3],24,true)
		setProperty('opponentSplashGreenHold.alpha',0)
		setObjectCamera('opponentSplashGreenHold', 'camHUD')
		objectPlayAnimation('opponentSplashGreenHold','idle',true)
		addLuaSprite('opponentSplashGreenHold',true);

		makeAnimatedLuaSprite('opponentSplashRedHold','holdCoverRed',getPropertyFromGroup('opponentStrums', 3, 'x') + offsetX, getPropertyFromGroup('opponentStrums', 3 , 'y') + offsetY)
		addAnimationByPrefix('opponentSplashRedHold', 'idle',hold[4],24,true)
		setProperty('opponentSplashRedHold.alpha',0)
		setObjectCamera('opponentSplashRedHold', 'camHUD')
		objectPlayAnimation('opponentSplashRedHold','idle',true)
		addLuaSprite('opponentSplashRedHold',true);

		setPropertyFromClass('states.PlayState','SONG.splashSkin','noteSplashes')

end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if getPropertyFromGroup('notes',id,'sustainLength') > 0 then
		if noteData == 0 then
			runTimer('splashPurpleEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('playerSplashPurpleHold.alpha',getPropertyFromGroup('playerStrums', 0 , 'alpha'))
		end

		if noteData == 1 then
			runTimer('splashBlueEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('playerSplashBlueHold.alpha',getPropertyFromGroup('playerStrums', 1 , 'alpha'))
		end

		if noteData == 2 then
			runTimer('splashGreenEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('playerSplashGreenHold.alpha',getPropertyFromGroup('playerStrums', 2 , 'alpha'))
		end

		if noteData == 3 then
			runTimer('splashRedEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('playerSplashRedHold.alpha',getPropertyFromGroup('playerStrums', 3 , 'alpha'))
		end
	end

	
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if getPropertyFromGroup('notes',id,'sustainLength') > 0 then
		if noteData == 0 then
			runTimer('opponentSplashPurpleEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('opponentSplashPurpleHold.alpha',getPropertyFromGroup('opponentStrums', 0 , 'alpha'))
		end

		if noteData == 1 then
			runTimer('opponentSplashBlueEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('opponentSplashBlueHold.alpha',getPropertyFromGroup('opponentStrums', 1 , 'alpha'))
		end

		if noteData == 2 then
			runTimer('opponentSplashGreenEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('opponentSplashGreenHold.alpha',getPropertyFromGroup('opponentStrums', 2 , 'alpha'))
		end

		if noteData == 3 then
			runTimer('opponentSplashRedEnd',getPropertyFromGroup('notes',id,'sustainLength')/1000)
			setProperty('opponentSplashRedHold.alpha',getPropertyFromGroup('opponentStrums', 3 , 'alpha'))
		end
	end

	
end

	

function onTimerCompleted(tag)
	if tag == 'splashPurpleEnd' then
		setProperty('playerSplashPurpleHold.alpha',0)
		if keyPressed('left') or getProperty('cpuControlled') == true then
			setProperty('playerSplashPurpleEnd.alpha',alpha)
			playAnim('playerSplashPurpleEnd','idle',false)
			runTimer('PurpleEnd',0.333)
		end
	end

	if tag == 'splashBlueEnd' then
		setProperty('playerSplashBlueHold.alpha',0)
		if keyPressed('down') or getProperty('cpuControlled') == true then
			setProperty('playerSplashBlueEnd.alpha',alpha)
			playAnim('playerSplashBlueEnd','idle',false)
			runTimer('BlueEnd',0.333)
		end
	end

	if tag == 'splashGreenEnd' then
		setProperty('playerSplashGreenHold.alpha',0)
		if keyPressed('up') or getProperty('cpuControlled') == true then
			setProperty('playerSplashGreenEnd.alpha',alpha)
			playAnim('playerSplashGreenEnd','idle',false)
			runTimer('GreenEnd',0.333)
		end
	end

	if tag == 'splashRedEnd' then
		setProperty('playerSplashRedHold.alpha',0)
		if keyPressed('right') or getProperty('cpuControlled') == true then
			setProperty('playerSplashRedEnd.alpha',alpha)
			playAnim('playerSplashRedEnd','idle',false)
			runTimer('RedEnd',0.333)
		end
	end

	if tag == 'PurpleEnd' then
		setProperty('playerSplashPurpleEnd.alpha',0)
	end

	if tag == 'BlueEnd' then
		setProperty('playerSplashBlueEnd.alpha',0)
	end

	if tag == 'GreenEnd' then
		setProperty('playerSplashGreenEnd.alpha',0)
	end

	if tag == 'RedEnd' then
		setProperty('playerSplashRedEnd.alpha',0)
	end

	if tag == 'opponentSplashPurpleEnd' then
		setProperty('opponentSplashPurpleHold.alpha',0)
	end

	if tag == 'opponentSplashBlueEnd' then
		setProperty('opponentSplashBlueHold.alpha',0)
	end

	if tag == 'opponentSplashGreenEnd' then
		setProperty('opponentSplashGreenHold.alpha',0)
	end

	if tag == 'opponentSplashRedEnd' then
		setProperty('opponentSplashRedHold.alpha',0)
	end
end