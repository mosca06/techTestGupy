class Soma

  def initialize(indice)
    @indice = indice
  end
  
  def self.call(indice)
    new(indice).call
  end
  
  def call 
    run
  end

  private

  def run 
    puts "Valor final de SOMA: #{calcular_soma(@indice)}"
  end

  def calcular_soma(indice)
    soma = 0
    k = 0

    while k < indice
      k += 1
      soma += k
    end

    soma
  end
end

print "Informe o valor de INDICE: "
indice = gets.to_i
Soma.call(indice)





