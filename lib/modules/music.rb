class MusicCommands
    def initialize(bot)
        bot.command(:musicstats, description: "Check how many musics you have listened to") do |event|
            event.respond("You have listened to at least **7** music in your life. Probably.")
        end
    end
end
