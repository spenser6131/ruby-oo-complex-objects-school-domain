class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, name|
      sorted_roster[grade] = name.sort
    end
    sorted_roster
  end
  
  
end