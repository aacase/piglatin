require './lib/pig_latin.rb'


describe 'Pig Latin' do
  
  it "Returns an error if the string is not a word" do
    
    expect(PigLatin.translate 0).to eq("That's probably not a word. Is it a number?")
  end

  it "if the word starts with a vowel, add way to them" do
    
    expect(PigLatin.translate 'egg').to eq("eggway")
  end

  it "If the word starts with 2 consanents, word ends in those consanents plus ay" do
    
    expect(PigLatin.translate 'steve').to eq("evestay")
  end

  it "if the first letter of a word is a consanent, it returns the second letter to the last letter, plus letter one, and ay " do
    
    expect(PigLatin.translate 'yellow').to eq("ellowyay")
  end
end
