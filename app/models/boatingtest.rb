class BoatingTest

    attr_accessor :student, :test_name, :status, :instructor

    @@all = []
    def initialize(student_obj, test_name, status, instructor_obj)
        @student = student_obj
        @test_name = test_name
        @status = status
        @instructor = instructor_obj
        @@all << self
    end

    def self.all
        @@all
    end

end


# DONE:
# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests