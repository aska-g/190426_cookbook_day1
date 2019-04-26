class Task
  attr_reader :description
  def initialize(description)
    @description = description
    @done = false
  end

  def complete!
    @done = true
  end

  def done?
    @done
  end
end
