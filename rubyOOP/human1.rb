class Human
attr_accessor :strength, :health, :intelligence, :stealth
def initialize
  @strength = 3
  @health = 100
  @intelligence = 3
  @stealth = 3
end

def attack obj
  if obj.class.ancestors.include?(Human)
    obj.health -= 10
    true

  else
    false

  end
end
end


human = Human.new
human2 = Human.new
human3 = Human.new
puts human.attack(human2)
puts human.attack(human2)
puts human.attack(human3)
puts human.attack(human3)
puts human.attack(human2)
puts human.attack(human2)
puts human.attack(human2)
puts human2.attack(human3)
puts human2.attack(human)
puts human2.attack(human3)
puts human.attack("animal")
puts human2.health
puts human3.health
puts human.health
