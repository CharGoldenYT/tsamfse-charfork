local splashAnims = {
    [0] = 'note splash purple',
    [1] = 'note splash blue',
    [2] = 'note splash green',
    [3] = 'note splash red'
}

function goodNoteHit(id, direction, noteType, isSustainNote)
    if getPropertyFromGroup('notes',id,'rating') == 'sick' and isSustainNote == false then
        local splashTexture = getPropertyFromGroup('notes', id, 'noteSplashTexture')

        -- لو ما كان محدد، استخدم الافتراضي
        if splashTexture == nil or splashTexture == '' then
            splashTexture = 'noteSplashes'
        end

        spawnSplash(direction, splashTexture)
    end
end

function spawnSplash(dir, splashTexture)
    local x = getPropertyFromGroup('playerStrums', dir, 'x')
    local y = getPropertyFromGroup('playerStrums', dir, 'y')

    x = x - 79.5
    y = y - 90

    local tag = 'splash' .. getRandomInt(0, 100000)

    makeAnimatedLuaSprite(tag, splashTexture, x, y)

    local variant = getRandomInt(1, 2)
    addAnimationByPrefix(tag, 'splash', splashAnims[dir] .. ' ' .. variant, 24, false)

    setObjectCamera(tag, 'camHUD')
    setProperty(tag..'.visible', getPropertyFromGroup('playerStrums', dir , 'visible'));
    setProperty(tag..'.alpha', getPropertyFromGroup('playerStrums', dir , 'alpha'));
    setProperty(tag..'.antialiasing', getPropertyFromGroup('playerStrums', dir , 'antialiasing'));
    setProperty(tag..'.angle', getPropertyFromGroup('playerStrums', dir , 'angle'));

    addLuaSprite(tag, true)
    objectPlayAnimation(tag, 'splash', true)

    runTimer(tag .. '_remove', 0.175)
end

function onTimerCompleted(tag)
    if stringEndsWith(tag, '_remove') then
        local spr = string.gsub(tag, '_remove', '')
        removeLuaSprite(spr, true)
    end
end