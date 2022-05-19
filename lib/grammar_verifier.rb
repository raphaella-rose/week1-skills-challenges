def grammar_verifier(text)
  arr = text.split("")
  if text.length == 0
    return "Please enter some text for the verifier to check."
  elsif !(arr[0] == arr[0].upcase) || !(arr[arr.count - 1] == ".")
    return false
  else
    return true
  end
end