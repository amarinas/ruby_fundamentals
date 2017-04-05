require_relative "human"

class Wizard < Human
  # your code here
  def initialize
    @health = 50
    @intelligence = 25
    super
  end

  def heal
    @health += 10
  end

  def fireball obj
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end



end
