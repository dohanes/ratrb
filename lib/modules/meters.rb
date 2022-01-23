class MetersCommands
    def initialize(bot)
        bot.command(:bm, description: "Ask rat if something is Based or Cringe") do |event, *text|
            text = text.join(' ')
            if text == ''
               text = event.author.username
           end

           text.gsub! '@', ''
           text.gsub! '*', ''
           text.gsub! '`', ''
           text.gsub! '_', ''
           
            r = Random.new(text.unpack("B*")[0].to_i)
            event.respond("**"+text+"** are #{(r.rand >= 0.5 ? "**Based...**" : "**Cringe...**")}")
        end
    end
end