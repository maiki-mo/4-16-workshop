def counter
    puts "Please write a sentence."

    answer = gets.chomp.gsub(/[^0-9A-Za-z]/, '').downcase

    # array_answer = answer.downcase.split("")

    frequencies = Hash.new(0)

    answer.each_char { |element| frequencies[element] += 1 }

    most_letter = frequencies.max_by { |key, value| value }

    # sorted_freq = frequencies.sort_by {|key, value| value }

    # most_letter = sorted_freq.reverse[0][0]

    puts "The letter used most often in this sentence is #{most_letter[0].capitalize} #{most_letter[1]} times"
end

counter