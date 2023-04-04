class Question
  OPERATIONS = [{ operation: "plus", operator: :+ },
                { operation: "minus", operator: :- },
                { operation: "multiplied by", operator: :* },
                { operation: "divided by", operator: :/ }]

  def initialize()
    @answer = 0.1
    until @answer.modulo(1) == 0.0
      generate_random_question()
      answer_question()
    end
  end

  def generate_random_question
    @first_num = rand(1..20).to_f
    @second_num = rand(1..20)
    @operation = OPERATIONS[rand(0..3)]
  end

  def to_s()
    "What is #{@first_num.to_i} #{@operation[:operation]} #{@second_num} ?"
  end

  def answer_question()
    @answer = @first_num.send(@operation[:operator], @second_num)
  end

  def is_correct?(user_answer)
    user_answer.to_i == @answer.to_i
  end
end
