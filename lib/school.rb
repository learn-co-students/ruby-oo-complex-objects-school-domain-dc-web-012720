require 'pry'
class School
    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        self.roster[grade] << name
        self.roster
    end

    def grade(grade)
        self.roster[grade]
       # @roster[grade]
    end

    def sort
        new_roster = {}
        self.roster.sort.each do |grade, names| 
            new_roster[grade] = names.sort
        end
        return new_roster
    end

end