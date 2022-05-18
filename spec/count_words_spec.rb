require 'count_words'

RSpec.describe "count_words" do
  it "returns number of words in string" do
    expect(count_words("This is a test string.")).to eq 5
  end
end