class School
    attr_accessor :roster, :grade
    attr_reader :name

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        # if there is no grade key, create grade key with array grade value
        # put the student in that empty array you created
        if !@roster[student_grade]
            @roster[student_grade] = [student_name]
        # if there is a grade key, which means there is a grade array value
        # push the student into that grade array value
        else
            @roster[student_grade] << student_name
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = {}
        @roster.map {|grade, name| sorted_roster[grade] = name.sort}
        sorted_roster
    end
end
