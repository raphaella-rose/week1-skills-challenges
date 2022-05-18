# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
time_needed = read_time_estimator(text)

* text is a string containing words "This is some text"
* time_needed is the estimate of time taken to read text "It takes 1 minute to read this text."

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
read_time_estimator(no text)
# => "Please enter some text to recieve an estimate."

#2
read_time_estimator(short text)
# => "It takes 1 minute to read this text."

#3
read_time_estimator(longer text)
# => "It takes 2 minutes to read this text."


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


