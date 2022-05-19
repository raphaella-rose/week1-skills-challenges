class GrammarStats

  def initialize
  
  @pass_counter = 0
  @fail_counter = 0
  end

  def check(text)
    arr = text.split("")
    last_char = arr.count - 1
    if arr[0] == arr[0].upcase && arr[last_char] == "!" || arr[last_char] == "?" || arr[last_char] == "."
      @pass_counter += 1
      return true
    else
      @fail_counter += 1
      return false
    end
  end

  def percentage_good
    total = @pass_counter + @fail_counter
    return (@pass_counter.to_f / total.to_f) * 100.0
  end

end