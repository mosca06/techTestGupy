class Fibonacci
  def initialize(number)
    @number = number
  end

  def self.call(number)
    new(number).call
  end

  def call
     run
  end

  private

  def run
    display_result
  end

  def generate_sequence
    sequence = [0, 1]
    while sequence.last < @number
      sequence << sequence[-1] + sequence[-2]
    end
    sequence
  end


  def belongs_to_sequence?
    generate_sequence.include?(@number)
  end


  def display_result
    sequence = generate_sequence
    puts "Sequência de Fibonacci gerada até #{@number}: #{sequence.join(', ')}"
    if belongs_to_sequence?
      puts "O número #{@number} pertence à sequência de Fibonacci."
    else
      puts "O número #{@number} NÃO pertence à sequência de Fibonacci."
    end
  end
end


print "Informe um número para verificar na sequência de Fibonacci: "
number = gets.to_i
Fibonacci.call(number)


