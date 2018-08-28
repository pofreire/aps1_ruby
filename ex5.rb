
# Escreva um programa que pergunte um ano inicial e um ano
# final, e imprima com puts todos os anos bissextos entre eles (e
# os incluindo, se eles também forem bissextos). Anos bissextos
# são sempre divisíveis por quatro (como 1984 e 2004). Contudo,
# anos divisíveis por 100 não são bissextos (como 1800 e 1900) a
# não ser que sejam divisíveis por 400 (como 1600 e 2000, que
# foram de fato anos bissextos).
class AnoBiSsexto

	def initialize()
		puts 'Primeiro ano: '
		@ano1 = gets.chomp.to_i
		puts 'Segundo ano: '
		@ano2 = gets.chomp.to_i

		if(@ano1 > @ano2)
  			puts "Comparação inválida!"
		end
	end

	def calculaAnoBiSsexto()

		(@ano1..@ano2).each do |i|
			if i % 4 == 0
				if !(i % 100 == 0) || (i % 400 == 0)
					puts i
				end
			end
		end
	end
end

ano = AnoBiSsexto.new()
ano.calculaAnoBiSsexto()