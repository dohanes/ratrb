class MusicCommands
    def initialize(bot)
        bot.command :musicstats do |event|
            event.respond("You have listened to at least **7** music in your life. Probably.")
        end
    end
end