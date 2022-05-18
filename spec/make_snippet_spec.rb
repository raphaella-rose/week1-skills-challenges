require 'make_snippet'

RSpec.describe "make_snippet" do
  it "returns string with word count <= 5" do
    expect(make_snippet("I know how to code")).to eq "I know how to code"
  end
  
  it "returns string with word count longer than 5 using '...'" do
    expect(make_snippet("I know how to code that!")).to eq "I know how to code..."
  end

end