require 'discordrb'
require 'dotenv'
require './lib/bot'

Dotenv.load

$prefix = "r!"

bot = Rat.new token: ENV['TOKEN']

bot.run