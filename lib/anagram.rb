# Your code goes here!
require "pry"
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(comparison)
        
        comp_chars_arr = comparison.map do |word|
           word.chars
        end

        matched_words = comp_chars_arr.filter do |comp|
            comp.sort == @word.chars.sort
        end

        matched_arr = matched_words.map do |word|
            word.join('')
        end
    
    end

end

care = Anagram.new('gallery')
# care.match('race')
care.match(["gallery", "regally", "largely"])

# binding.pry