def make_snippet(str)
  words = str.split(" ")
  return str if words.count <= 5
  formatted = ""
  4.times { formatted += "#{words.shift()} " }
  formatted += "#{words.shift()}..."
  return formatted 
end
