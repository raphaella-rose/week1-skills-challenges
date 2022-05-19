def todo_checker(text)
  return "Please enter some text." if text.length == 0
  if text.include? "TODO"
    return "You have a task to do."
  else
    return "You do not have a task to do."
  end
end