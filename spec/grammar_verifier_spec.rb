require 'grammar_verifier'

RSpec.describe "grammar_verifier" do
  good_text = "Hello, my name is Jane."
  no_capital_text = "hello, my name is Jane."
  no_punctuation_text = "Hello, my name is Jane"
  it "asks for text when no text is given" do
    expect(grammar_verifier("")).to eq "Please enter some text for the verifier to check."
  end
  it "returns true when text has capital letter and punctuation" do
    expect(grammar_verifier(good_text)).to eq true
  end
  it "returns false when text has no capital letter" do
    expect(grammar_verifier(no_capital_text)).to eq false
  end
  it "returns false when text has no punctuation at the end" do
    expect(grammar_verifier(no_punctuation_text)).to eq false
  end
end