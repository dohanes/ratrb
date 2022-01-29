require './lib/modules/music'
require './lib/modules/meters'

class Rat < Discordrb::Commands::CommandBot
  def initialize(token: nil, prefix: nil, lfm_key: nil, lfm_secret: nil)
    super

    # Obvious necessity
    message(with_text: 'rat') do |event|
      event.respond('rat')
    end

    MusicCommands.new self, lfm_key, lfm_secret
    MetersCommands.new self
  end
end
