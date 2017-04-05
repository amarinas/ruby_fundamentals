require_relative "human"

class Samurai < Human
  @@count ==0
  def initialize
  # your code here
    @health = 200
    @@count +=1
    super
  end

  def death_blow obj
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end

  def meditate
    @health = 200
  end



  def self.count
    @@count
  end

    

end
