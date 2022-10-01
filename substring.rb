dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
words = "Howdy partner, sit down! How's it going?"

def substrings(words, dictionary)
    result = {}
    dictionary.each do |word|
        n = words.downcase.scan(word).length
        unless n == 0 
            result[word] = n
        end
    end
    result
end

p substrings(words, dictionary)
