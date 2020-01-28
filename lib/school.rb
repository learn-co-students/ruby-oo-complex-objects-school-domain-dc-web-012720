# code here!
class School
    #! has an empty roster when initialized
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    #! simple getter
    attr_reader :roster
    #! simple setter
    # attr_writer 


    #! able to add students
    #! able to add multiple students to a calss
    #! able to add students to different grades
    def add_student(student, grade)
       #! if grade doesn't exist, we need to create a grade
        if @roster[grade]
            @roster[grade] << student
       #! if grade does exist, we should push the student's name into the grade
        else
            @roster[grade] = [student]
        end
    end


    #! retrieve students from a grade
    def grade(grade)
        #! find the grade in roster & return the array
        @roster[grade]
    end

    #! Go through each grade & sort the array.
    def sort
        #! Create a list of keys
        arr = @roster.map{|k, v| k}
        count = 0
        #! We count through each key to access each array
        while count < @roster.length
            #! sort each array
            @roster[arr[count]].sort!
            count += 1
        end
        #! return roster
        @roster
    end
    #! Side note: 
    #?    @roster[9]
    #? => ["Homer Simpson", "Bart Simpson"]
end