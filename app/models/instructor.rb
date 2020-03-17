class Instructor
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_obj, test_name)
        BoatingTest.all.each do |boating_test|
            if boating_test.student == student_obj && boating_test.test_name == test_name
                boating_test.status = "passed"
                return boating_test
            else
                return BoatingTest.new(student_obj, test_name, status="passed", self)
            end
        end
    end

    def fail_student(student_obj, test_name)
        BoatingTest.all.each do |boating_test|
            if boating_test.student == student_obj && boating_test.test_name == test_name
                boating_test.status = "failed"
                return boating_test
            else
                return BoatingTest.new(student_obj, test_name, status="failed", self)
            end
        end
    end
end

