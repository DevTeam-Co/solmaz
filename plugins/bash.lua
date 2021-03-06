--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local bash = {}
local mattata = require('mattata')

function bash:init()
    bash.commands = mattata.commands(self.info.username):command('bash').table
end

function bash:on_message(message, configuration, language)
    if not mattata.is_global_admin(message.from.id)
    then
        return
    end
    local input = mattata.input(message.text)
    if not input
    then
        return mattata.send_reply(
            message,
            language['bash']['1']
        )
    end
    local res = io.popen(input)
    local output = res:read('*all')
    res:close()
    return mattata.send_message(
        message.chat.id,
        output:len() == 0
        and language['bash']['2']
        or '<pre>' .. mattata.escape_html(output) .. '</pre>',
        'html'
    )
end

return bash