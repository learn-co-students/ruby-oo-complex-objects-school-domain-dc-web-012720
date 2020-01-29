class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade] << name
            @roster
        else
            @roster[grade] << name
        end

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |item, value|
            @roster[item] = value.sort
        end
        @roster
    end


end