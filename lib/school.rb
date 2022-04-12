class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_accessor :roster


    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade]=[] 
            @roster[grade] << student_name
        end
    end 

  def grade(grade)
    @roster[grade]
  end   

  def sort
    sorted_roster={}
    @roster.each do |grade, students|
        sorted_students=students.sort
        sorted_roster[grade] = sorted_students
    end
    sorted_roster
end

end 
    school = School.new("Bayside High School")
