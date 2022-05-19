# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
 todo = todo_checker(text)

* text is a string containing words "This is some text"
* todo tells the user if the text contains a '#TODO' "You have a task to do."

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
todo_checker(no_text)
# => "Please enter some text."

#2
todo_checker(text_with_todo)
# => "You have a task to do"

#3
todo_checker(text_without_todo)
# => "You do not have a task to do"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


