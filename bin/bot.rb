require 'discordrb'
require 'dotenv'
Dotenv.load

bot = Discordrb::Bot.new token: ENV['TOKEN']

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run