# Outputs the reading time, as a number
 
# Read this in "about 4 minutes"
# Usage: Read this in {{ page.content | reading_time_as_i }}
 
WORD_PER_MINUTE = 180

def calculate_time( input )
  words = input.split.size;
  minutes = ( words / WORD_PER_MINUTE ).floor
  minutes_label = minutes == 1 ? "minute" : "minutes"
  return minutes, minutes_label
end

module ReadingTimeFilterAsInteger
  def reading_time_as_i( input )
    minutes, minutes_label = calculate_time(input)
    minutes > 0 ? "#{minutes} #{minutes_label}" : "less than 1 minute"
  end

  Liquid::Template.register_filter(ReadingTimeFilterAsInteger)
end

# Outputs the reading time, as a string
 
# Read this in "about four minutes"
# Usage: Read this in {{ page.content | reading_time_as_s }}
 
module ReadingTimeFilterAsString
  def reading_time_as_s( input )
    minutes, minutes_label = calculate_time(input)

    case minutes
    when 2 then minutes_s = 'two'
    when 3 then minutes_s = 'three'
    when 4 then minutes_s = 'four'
    when 5 then minutes_s = 'five'
    when 6 then minutes_s = 'six'
    when 7 then minutes_s = 'seven'
    when 8 then minutes_s = 'eight'
    when 9 then minutes_s = 'nine'
    else        minutes_s = minutes
    end

    minutes > 0 ? "#{minutes_s} #{minutes_label}" : "less than one minute"
  end

  Liquid::Template.register_filter(ReadingTimeFilterAsString)
end
