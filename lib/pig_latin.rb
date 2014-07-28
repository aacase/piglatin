require "pig_latin/version"

module PigLatin
  def self.translate word
    alphabet=('a'..'z').to_a
    vowels=['a','e','i','o','u']
    consanants= alphabet - vowels
    if vowels.include?(word[0])
      word+'way'
    elsif consanants.include?(word[0]) && consanants.include?(word[1])
      word[2..-1] + word[0..1]+ "ay"
    elsif consanants.include?(word[0])
      word[1..-1] + word[0]+ "ay"
    else 
      p "That's probably not a word. Is it a number?"     
    end
  end
end
