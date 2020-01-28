# code here!
require 'pry'
require 'pp'
class School
    #initialize school
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end


    #
    # class methods
    #
    def add_student(student_name, school_grade)
        #takes string of student_name and int of school_grade and sorts into School roster

        if roster[school_grade]
            roster[school_grade] << student_name
        else
            roster[school_grade] = []
            roster[school_grade] << student_name
        end
    end

    def grade(grade_num)
        roster[grade_num]
    end

    def sort
        roster.sort.to_h.each do |grade, students|
            students.sort!
        end
    end

end