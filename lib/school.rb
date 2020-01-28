class School
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(stu_name, stu_grade)
        if roster[stu_grade]
            roster[stu_grade] << stu_name
        else
        roster[stu_grade] = []
        roster[stu_grade] << stu_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.sort.to_h.each do |grade, name|
            name.sort!
        end
    end
end