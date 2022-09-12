def substrings (words, dictionary)

  words_array = words.gsub(/[[:punct:]]/, '').downcase.split(' ')
  count = {}

  dictionary.each do |entry|
    words_array.each do |word|
      if word.include?(entry)
        if count.key?(entry)
          count[entry] += 1
        else
          count[entry] = 1
        end
      end
    end
  end

  count

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Enter a word or words to check if they are in the dictionary:"

words = gets.chomp

puts substrings(words, dictionary)