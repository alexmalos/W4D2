class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_employee unless boss == nil
    end

    attr_reader :salary, :boss

    def bonus(multiplier)
        bonus = salary * multiplier
    end

    def add_employee
        next_boss = boss
        until next_boss == nil
            next_boss.employees << self
            next_boss = next_boss.boss
        end
    end
end
