require 'grammar_stats'

RSpec.describe GrammarStats do
  correct_text = "Hello, my name is Jane and I am a developer; I enjoy reading in my spare time!"
  incorrect_text_capital = "hello my name is Jane and I am a developer; I enjoy reading in my spare time!"
  incorrect_text_punctuation = "Hello, my name is Jane and I am a developer; I enjoy reading in my spare time"
  it "returns true when text starts with capital letter and ends with punctuation" do
    sentence = GrammarStats.new()
    expect(sentence.check(correct_text)).to eq true 
  end
  it "returns false when text doesn't start with capital letter" do
    sentence = GrammarStats.new()
    expect(sentence.check(incorrect_text_capital)).to eq false
  end
  it "returns false when text doesn't end with punctuation" do
    sentence = GrammarStats.new()
    expect(sentence.check(incorrect_text_punctuation)).to eq false
  end
  
  it "returns the percentage of tests that passed the check method" do
    sentence = GrammarStats.new()
    sentence.check(correct_text)
    sentence.check(correct_text)
    sentence.check(incorrect_text_punctuation)
    sentence.check(incorrect_text_capital)
    sentence.check(incorrect_text_capital)
    expect(sentence.percentage_good()).to eq 40
  end

end