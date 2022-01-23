require './lib/modules/music'
require './lib/modules/meters'

class Rat < Discordrb::Commands::CommandBot
    def initialize(token: nil, prefix: nil)
        super

        # Obvious necessity
        self.message(with_text: 'rat') do |event|
            event.respond('rat')
        end

        MusicCommands.new self
        MetersCommands.new self
    end
end