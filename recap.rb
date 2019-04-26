class Cat
  attr_reader :color
  attr_accessor :name

  def self.branch
    "mammal"
  end

  def initialize(color, name)
    @color = color
    @name = name
  end

  # def color
  #   @color
  # end

  # def name=(new_name)
  #   @name = new_name
  # end
end


bojkot = Cat.new('tricolor', 'bojkot')
puts bojkot.name
puts bojkot.color

bojkot.name = 'dakota'
puts bojkot.name

puts Cat.branch


