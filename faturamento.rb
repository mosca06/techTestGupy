require 'json'

class Faturamento
  def initialize(faturamento)
    @faturamento = faturamento
  end

  def self.call(faturamento)
    new(faturamento).call
  end

  def call
    run
  end

  private

  def run
    puts "Menor valor de faturamento: #{menor_valor}"
    puts "Maior valor de faturamento: #{maior_valor}"
    puts "Dias acima da média mensal: #{dias_acima_da_media}"
  end

  def menor_valor
    valores.min
  end

  def maior_valor
    valores.max
  end

  def dias_acima_da_media
    valores.count { |valor| valor > media_mensal }
  end

  def media_mensal
    valores.sum / valores.size
  end

  def valores
    @valores ||= @faturamento.map { |dia| dia['valor'] }.select { |valor| valor > 0 }
  end
end

file = File.read('faturamento.json')
faturamento_data = JSON.parse(file)

Faturamento.call(faturamento_data)
