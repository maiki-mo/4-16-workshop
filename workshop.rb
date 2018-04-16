puts "Please write a sentence."

answer = gets.chomp.gsub(/[^0-9A-Za-z]/, '')

p array_answer = answer.downcase.split("")

frequencies = Hash.new(0)

array_answer.each { |element| frequencies[element] += 1 }

sorted_freq = frequencies.sort_by {|key, value| value }

most_letter = sorted_freq.reverse[0][0]

puts "The letter used most often in this sentence is #{most_letter}"