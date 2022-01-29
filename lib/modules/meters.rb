MARKS = ['!', '?', '.', '…']

class MetersCommands
  def initialize(bot)
    bot.command(:bm, description: 'Ask rat if something is Based or Cringe') do |event, *text|
      text = text.join(' ')

      text.gsub! '@', ''
      text.gsub! '*', ''
      text.gsub! '`', ''
      text.gsub! '_', ''

      if text == ''
        text = event.author.username
        r = Random.new(text.unpack1('B*').to_i)

        type = 'Cringe'
        mark = '!?'
        times = 30 + (r.rand * 70).floor
      else
        r = Random.new(text.unpack1('B*').to_i)

        type = r.rand >= 0.5 ? 'Based' : 'Cringe'
        mark = MARKS[(r.rand * MARKS.length).floor]
        times = (r.rand * 7).floor
      end

      event.respond("**#{text}** are **#{type}#{mark * times}**")
    end
  end
end
