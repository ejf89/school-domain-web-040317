require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)

        if !self.roster.keys.include? (grade)
            @roster[grade] = []
            @roster[grade] = [student]
        else
            @roster[grade] << student
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.map do |k, v|
            v.sort!
        end
        self.roster
    end

end
