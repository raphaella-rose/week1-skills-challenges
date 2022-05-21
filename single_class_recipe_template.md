# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_
> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize(name) # name is a string
    # creates name variable and list variable
  end

  def add_task(task) # task is a string
    # No return value 
  end

  def see_list()
    # Throws an exception if no task is set
    # Otherwise, returns a string showing the user their current todo list
  end

  def remove_task(task) # task is a string
    # No return value
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todolist = TodoList.new("Raphaella")
todolist.see_list() # "fails with "No task set."

# 2
todolist = TodoList.new("Raphaella")
todolist.add_task("Walk the dog")
todolist.see_list() # => "My todo list: 1. Walk the dog, Raphaella!"

# 3
todolist = TodoList.new("Raphaella")
todolist.add_task("Walk the dog")
todolist.add_task("Buy food")
todolist.see_list() # => "My todo list: 1. Walk the dog, 2. Buy food, Raphaella!"

# 4
todolist = TodoList.new("Raphaella")
todolist.add_task("Walk the dog")
todolist.add_task("Buy food")
todolist.see_list() # => "My todo list: 1. Walk the dog, 2. Buy food, Raphaella!"
todolist.remove_task("Buy food")
todolist.see_list() # => "My todo list: 1. Walk the dog, Raphaella!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


