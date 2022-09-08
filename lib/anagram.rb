require 'pry'

class Anagram
    attr_accessor :word, :list

    def initialize(word)
        @word = word
        @compare = word.chars.sort
    end

    def match(list)
        @newList = []
        list.each do |word|
            brokenDown = word.chars.sort
            if brokenDown == @compare
                @newList << word
            end
        end
        return @newList
    end


end


#initialize with start word,
#take in list of words,
#break down start word and list of words to chars, then sort
#compare start word with each word in list broken down
#when theres a match, sets word to a variable