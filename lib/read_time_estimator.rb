def read_time_estimator(text)
  return "Please enter some text to recieve an estimate." if text.empty?
  word_count = text.split(" ").count
  total_mins = word_count / 200
  if total_mins > 1
    return "It takes #{total_mins} minutes to read this text."
  else
    return "It takes #{total_mins} minute to read this text."
  end
end