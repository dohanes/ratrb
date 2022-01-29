require 'lastfm'

class MusicCommands
  def initialize(bot, key, secret)
    lastfm = Lastfm.new(key, secret)
    bot.command(:musicstats, description: 'Check how many musics you have listened to') do |event, *text|
      text = text.join(' ')
      len = lastfm.library.get_artists(text).length
      len -= len % 7
      event.respond("You have listened to at least **#{len}** music in your life. Probably.")
    end
  end
end
