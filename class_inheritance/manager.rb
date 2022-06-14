require_relative 'employee'

class Manager < Employee
    def initialize(name, title, salary, boss)
        @employees = []
        super
    end

    attr_accessor :employees

    def bonus(multiplier)
        sum = 0
        employees.each { |employee| sum += employee.salary }
        sum * multiplier
    end
end