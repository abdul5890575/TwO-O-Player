class Question
    attr_accessor :number1 , :number2

    def initialize()
        @number1 = rand(20)
        @number2 = rand(20)
    end

    def question()
        "What is #{self.number1} plus #{self.number2} equals?"
    end

end  