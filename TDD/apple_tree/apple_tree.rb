class Apple
attr_accessor :age
attr_reader :count, :height

  def initialize 
    @age = 0
    @count = 0
    @height = 10
  end

  def year_gone_bye
    @age += 1
    @height +=  percent(@height)
    @count += 2 if (4..10).include?(@age)
  end

  def pick_apples
    @count = 0
  end

  private

  def percent h
    (h * 0.1).round(2)
  end





end
