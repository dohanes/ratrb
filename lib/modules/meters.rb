class MetersCommands
  def initialize(bot)
    bot.command(:bm, description: 'Ask rat if something is Based or Cringe') do |event, *text|
      text = text.join(' ')
      text = event.author.username if text == ''

      text.gsub! '@', ''
      text.gsub! '*', ''
      text.gsub! '`', ''
      text.gsub! '_', ''

      r = Random.new(text.unpack1('B*').to_i)
      event.respond('**' + text + "** are #{r.rand >= 0.5 ? '**Based...**' : '**Cringe...**'}")
    end
  end
end
