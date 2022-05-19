require 'todo_checker'

RSpec.describe 'todo_checker' do
  text_with_todo = "Today I am very busy and have lots of work, I also have TODO some gardening."
  text_without_todo = "Today I am very busy and have lots of work."
  it "asks the user to enter text if no text is given" do
    expect(todo_checker("")).to eq "Please enter some text."
  end

  it "tells the user they have a task when the text contains TODO" do
    expect(todo_checker(text_with_todo)).to eq "You have a task to do."
    end

  it "tells the user they don't have any tasks to do when the text doesn't contain TODO" do
    expect(todo_checker(text_without_todo)).to eq "You do not have a task to do."
    end
end