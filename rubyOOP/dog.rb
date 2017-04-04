require_relative "mammal"

class Dog < Mammal
  def pet
    @health += 5
    self
  end
  def walk
    @health -= 1
    self
  end
  def run
    @health -= 10
    self
  end
end

river  = Dog.new
river.display
river.walk.walk.walk.run.run.pet.display
