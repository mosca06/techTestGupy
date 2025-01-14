class FaturamentoPorEstado
  def initialize
    @estados = {
      "SP" => 67_836.43,
      "RJ" => 36_678.66,
      "MG" => 29_229.88,
      "ES" => 27_165.48,
      "Outros" => 19_849.53
    }
  end

 
  def self.call
    new.call
  end

  def call
    run
  end

  private

  def run
    total = calcular_total
    puts "Faturamento total: R$#{format('%.2f', total)}\n\n"
    @estados.each do |estado, valor|
      percentual = calcular_percentual(valor, total)
      puts "Estado: #{estado} - Faturamento: R$#{format('%.2f', valor)} - Percentual: #{format('%.2f', percentual)}%"
    end
  end

  def calcular_total
    @estados.values.sum
  end

  def calcular_percentual(valor, total)
    (valor / total) * 100
  end
end

FaturamentoPorEstado.call
