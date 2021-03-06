require 'pry'
# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(student_name, grade)
      if @roster[grade]
        @roster[grade] << student_name
      else
        @roster[grade] = [student_name]
      end
    end
  
    def grade(grade)
      @roster[grade]
    end
  
    def sort
      result = {}
      @roster.sort.each do |grade, names|
        result[grade] = names.sort
      end
      result
    end
end
# school = School.new("Bayside High School")