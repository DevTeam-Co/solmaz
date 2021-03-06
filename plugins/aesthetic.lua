--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local aesthetic = {}
local mattata = require('mattata')

function aesthetic:init()
    aesthetic.commands = mattata.commands(self.info.username):command('aesthetic').table
    aesthetic.help = '/aesthetic <text> - Give your message a bit of "ＡＥＳＴＨＥＴＩＣ".'
end

function aesthetic:on_message(message)
    local input = mattata.input(message.text)
    if not input
    then
        return mattata.send_reply(
            message,
            aesthetic.help
        )
    end
    return mattata.send_message(
        message.chat.id,
        input
        :gsub('!', '！')
        :gsub('"', '＂')
        :gsub('#', '＃')
        :gsub('%$', '＄')
        :gsub('%%', '％')
        :gsub('&', '＆')
        :gsub('\'', '＇')
        :gsub('%(', '（')
        :gsub('%)', '）')
        :gsub('%*', '＊')
        :gsub('%+', '＋')
        :gsub(',', '，')
        :gsub('%-', '－')
        :gsub('%.', '．')
        :gsub('/', '／')
        :gsub('0', '０')
        :gsub('1', '１')
        :gsub('2', '２')
        :gsub('3', '３')
        :gsub('4', '４')
        :gsub('5', '５')
        :gsub('6', '６')
        :gsub('7', '７')
        :gsub('8', '８')
        :gsub('9', '９')
        :gsub(':', '：')
        :gsub(';', '；')
        :gsub('%<', '＜')
        :gsub('=', '＝')
        :gsub('%>', '＞')
        :gsub('%?', '？')
        :gsub('@', '＠')
        :gsub('A', 'Ａ')
        :gsub('B', 'Ｂ')
        :gsub('C', 'Ｃ')
        :gsub('D', 'Ｄ')
        :gsub('E', 'Ｅ')
        :gsub('F', 'Ｆ')
        :gsub('G', 'Ｇ')
        :gsub('H', 'Ｈ')
        :gsub('I', 'Ｉ')
        :gsub('J', 'Ｊ')
        :gsub('K', 'Ｋ')
        :gsub('L', 'Ｌ')
        :gsub('M', 'Ｍ')
        :gsub('N', 'Ｎ')
        :gsub('O', 'Ｏ')
        :gsub('P', 'Ｐ')
        :gsub('Q', 'Ｑ')
        :gsub('R', 'Ｒ')
        :gsub('S', 'Ｓ')
        :gsub('T', 'Ｔ')
        :gsub('U', 'Ｕ')
        :gsub('V', 'Ｖ')
        :gsub('W', 'Ｗ')
        :gsub('X', 'Ｘ')
        :gsub('Y', 'Ｙ')
        :gsub('Z', 'Ｚ')
        :gsub('%[', '［')
        :gsub('\\', '＼')
        :gsub('%]', '］')
        :gsub('%^', '＾')
        :gsub('_', '＿')
        :gsub('`', '｀')
        :gsub('a', 'ａ')
        :gsub('b', 'ｂ')
        :gsub('c', 'ｃ')
        :gsub('d', 'ｄ')
        :gsub('e', 'ｅ')
        :gsub('f', 'ｆ')
        :gsub('g', 'ｇ')
        :gsub('h', 'ｈ')
        :gsub('i', 'ｉ')
        :gsub('j', 'ｊ')
        :gsub('k', 'ｋ')
        :gsub('l', 'ｌ')
        :gsub('m', 'ｍ')
        :gsub('n', 'ｎ')
        :gsub('o', 'ｏ')
        :gsub('p', 'ｐ')
        :gsub('q', 'ｑ')
        :gsub('r', 'ｒ')
        :gsub('s', 'ｓ')
        :gsub('t', 'ｔ')
        :gsub('u', 'ｕ')
        :gsub('v', 'ｖ')
        :gsub('w', 'ｗ')
        :gsub('x', 'ｘ')
        :gsub('y', 'ｙ')
        :gsub('z', 'ｚ')
        :gsub('{', '｛')
        :gsub('|', '｜')
        :gsub('}', '｝')
        :gsub('~', '～')
        :gsub(' ', '  '),
        nil
    )
end

return aesthetic