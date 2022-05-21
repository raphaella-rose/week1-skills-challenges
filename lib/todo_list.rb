class TodoList

  def initialize(name)
    @name = name
    @list = []
    @completed = []
  end

  def see_list()
    fail "No tasks have been set." if @list.length == 0
    todo_body = ""
    @list.each_with_index { |val,i| todo_body += "#{i + 1}. #{val}, " }
    return "My todo list: #{todo_body}#{@name}!"

  end
  
  def add_task(task)
    @list.push(task) 
  end

  def remove_task(task)
    @list.delete(task)
    @completed.push(task)
  end

  def show_completed
    fail "No tasks have been completed." if @completed.length == 0
    completed_body = ""
    @completed.each_with_index { |val,i| completed_body += "#{i + 1}. #{val}, "}
    return "My completed tasks: #{completed_body}well done #{@name}!"
  end


end