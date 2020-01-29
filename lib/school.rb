class School
   attr_accessor :school, :roster
   
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade].push(name)
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort()
        result = {}
        @roster.each do |key, students|
            result[key] = students.sort!
        end
    end
end