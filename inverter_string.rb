class InverterString
  def initialize(string)
    @string = string
  end

  def self.call(string)
    new(string).call
  end

  def call
    run
  end

  private

  def run
    puts "String original: #{@string}"
    puts "String invertida: #{inverter_string}"
  end

  def inverter_string
    resultado = ""
    @string.each_char { |char| resultado = char + resultado }
    resultado
  end
end

print "Informe uma string para inverter: "
entrada = gets.chomp
InverterString.call(entrada)
