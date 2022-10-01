offset = 20
phrase = "What a string!".split('')

uppercase_first = "A".ord
uppercase_last = "Z".ord

lowercase_first = "a".ord
lowercase_last = "z".ord

alphabet_length = 26

uppercase_range = Range.new(uppercase_first, uppercase_last).to_a
lowercase_range = Range.new(lowercase_first, lowercase_last).to_a

result = ""
phrase.each do |letter| 
    letter_index = letter.ord 
    if lowercase_range.include?(letter_index)
        result << (lowercase_first + (letter_index - lowercase_first + offset).remainder(alphabet_length)).chr
    elsif uppercase_range.include?(letter_index)
        result << (uppercase_first + (uppercase_first + letter_index + offset).remainder(alphabet_length)).chr
    else
        result << letter
    end
end

p result
