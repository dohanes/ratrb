require 'discordrb'
require 'dotenv/load'
require './lib/bot'

$prefix = "r!"

bot = Rat.new token: ENV['TOKEN'], prefix: "r!"

bot.run
