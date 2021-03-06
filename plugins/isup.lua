--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local isup = {}
local mattata = require('mattata')
local http = require('socket.http')
local url = require('socket.url')

function isup:init()
    isup.commands = mattata.commands(self.info.username):command('isup').table
    isup.help = '/isup <url> - Checks to see if the given URL is down for everyone or just you.'
end

function isup:on_message(message, configuration, language)
    local input = mattata.input(message.text)
    if not input
    then
        return mattata.send_reply(
            message,
            isup.help
        )
    end
    local str, res = http.request('http://isup.me/' .. url.escape(input))
    if res ~= 200
    then
        return mattata.send_reply(
            message,
            language['errors']['connection']
        )
    end
    local output = configuration.errors.connection
    if str:match('It\'s just you.')
    then
        output = language['isup']['1']
    elseif str:match('doesn\'t look like a site')
    then
        output = language['isup']['2']
    elseif str:match('looks down from here')
    then
        output = language['isup']['3']
    end
    return mattata.send_reply(
        message,
        output
    )
end

return isup