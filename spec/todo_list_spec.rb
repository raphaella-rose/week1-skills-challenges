require "todo_list"

RSpec.describe TodoList do
  context "no task is set and user returns the list" do
    it "fails" do
      todolist = TodoList.new("Raphaella")
      expect { todolist.see_list() }.to raise_error "No tasks have been set."
    end
  end 

  it "adds task to list" do
    todolist = TodoList.new("Raphaella")
    todolist.add_task("Walk the dog")
    expect(todolist.see_list()).to eq "My todo list: 1. Walk the dog, Raphaella!"
  end
  
  it "adds more than one task to list" do
    todolist = TodoList.new("Raphaella")
    todolist.add_task("Walk the dog")
    todolist.add_task("Buy food")
    expect(todolist.see_list()).to eq "My todo list: 1. Walk the dog, 2. Buy food, Raphaella!"
  end

  it "removes completed items from the todo list" do
    todolist = TodoList.new("Raphaella")
    todolist.add_task("Walk the dog")
    todolist.add_task("Buy food")
    todolist.remove_task("Buy food")
    expect(todolist.see_list()).to eq "My todo list: 1. Walk the dog, Raphaella!"

  end 

  it "shows a list when one task completed" do
    todolist = TodoList.new("Raphaella")
    todolist.add_task("Walk the dog")
    todolist.add_task("Buy food")
    todolist.remove_task("Buy food")
    expect(todolist.show_completed).to eq "My completed tasks: 1. Buy food, well done Raphaella!"
  end

  it "shows a list of all tasks completed" do
    todolist = TodoList.new("Raphaella")
    todolist.add_task("Walk the dog")
    todolist.add_task("Buy food")
    todolist.remove_task("Buy food")
    todolist.remove_task("Walk the dog")
    expect(todolist.show_completed).to eq "My completed tasks: 1. Buy food, 2. Walk the dog, well done Raphaella!"
  end

  context "if no tasks completed and user returns completed tasks" do
    it "fails" do
    todolist = TodoList.new("Raphaella")
    expect { todolist.show_completed }.to raise_error "No tasks have been completed."
    end
  end
end