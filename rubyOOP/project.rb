class Project
  attr_reader :name, :desc

  def initialize name, desc
    @project_name = name
    @project_desc = desc
  end
  def elevator_pitch
    puts "my project name #{@project_name} and i want you to #{@project_desc}"
  end

end
project1 = Project.new("dojo secrets", "buy me all the dojo")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
