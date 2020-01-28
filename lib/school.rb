require 'pry'

class School
    def initialize(name)
        @school_name = name
        @roster = {}
    end
    attr_reader :roster

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @grade = @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # @roster.each { |key, value|
        #     value.sort
        #     binding.pry
        # }
        @roster.each { |k,v|
            @roster[k] = v.sort

        }
    end
end
