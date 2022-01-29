require 'discordrb'
require 'dotenv/load'
require './lib/bot'

$prefix = 'r!'

bot = Rat.new token: ENV['TOKEN'], prefix: 'r!', lfm_key: ENV['LASTFM_KEY'], lfm_secret: ENV['LASTFM_SECRET']

bot.run
