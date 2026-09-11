local frame = {}
local delay = {}
local anims = {}
local ends = {}
luaDebugMode = true
local key = {'left', 'down', 'up', 'right'}
function onUpdatePost(e)
    for i = 0, getProperty('strumLineNotes.length') - 1 do
        if frame[i] == nil then frame[i] = 0 end
        if delay[i] == nil then delay[i] = 0 end
        delay[i] = delay[i] + e
        local strums = 'strumLineNotes.members['..i..']'
        local animation = 'strumLineNotes.members['..i..'].animation'
        if anims[i] == nil then anims[i] = getProperty(animation..'.name') end
        if anims[i] ~= getProperty(animation..'.name') then
            anims[i] = getProperty(animation..'.name')
            frame[i] = 0
        end
        if delay[i] > getProperty(animation..'.curAnim.delay') then
            delay[i] = delay[i] - getProperty(animation..'.curAnim.delay')
            if frame[i] < getProperty(animation..'.curAnim.frames.length') - 1 then
                frame[i] = frame[i] + 1
            else
                if getProperty(animation..'.looped') then
                    frame[i] = 0
                end
            end
        end
        setProperty(animation..'.curAnim.curFrame', frame[i])
    end
end