class TasksView
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      completed = task.done? ? '[x]' : '[ ]'
      puts "#{completed} #{index + 1}. #{task.description}"
    end
  end

  def ask_for_index
    puts "Give me an index (now!)"
    gets.chomp.to_i - 1
  end

  def ask_for_description
    puts "Give me a description (now!)"
    gets.chomp
  end
end
