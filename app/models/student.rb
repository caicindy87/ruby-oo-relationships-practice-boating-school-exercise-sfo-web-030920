class Student
    attr_reader :first_name

    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor_obj)
        BoatingTest.new(self, test_name, status, instructor_obj)
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def grade_percentage
        students_tests = BoatingTest.all.select{|boating_test| boating_test.student == self}
        passed_tests = students_tests.select{|boating_test| boating_test.status == "passed"}
        (passed_tests.length.to_f / students_tests.length.to_f) * 100
    end
end



# DONE:
# `Student` class:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)