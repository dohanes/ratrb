require './lib/modules/music'

class Rat < Discordrb::Bot
    def initialize(token: nil)
        super

        # Obvious necessity
        self.message(with_text: 'rat') do |event|
            event.respond('rat')
        end

        MusicCommands.new self
    end
end