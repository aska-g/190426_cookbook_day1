require_relative 'tasks_view'

class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_all
  end

  def create
    description = @view.ask_for_description
    task = Task.new(description)
    @repository.add(task)
  end

  def mark_as_done
    # show all tasks
    display_all
    # ask for index
    # grab task from repo
    task = @repository.find(get_index)
    # mark as done
    task.complete!
  end

  def destroy
    # show all tasks
    display_all
    # ask for index and delete from repo
    @repository.delete(get_index)
  end

  private

  def display_all
    tasks = @repository.all
    @view.display_tasks(tasks)
  end

  def get_index
    @view.ask_for_index
  end
end
