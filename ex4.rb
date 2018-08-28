# Escrever um algoritmo que leia um valor e calcule qual o menor
# número possível de notas de 100, 50, 20, 10, 5 e 2 em que o valor
# lido pode ser decomposto. Se o valor puder ser decomposto
# escreva a relação de notas necessárias, senão notifique o
# usuário que ele precisa inserir outro valor. Pergunte novamente
# até que um valor válido seja inserido.
class SeparadorDeNotas
	def loop()
		puts("Digite a nota a ser decomposta!")
		@notaAhDecompor = gets.to_i
		@notas = [100, 50, 20, 10, 5, 2]
	
		@notas.each do |nota|
			n = @notaAhDecompor / nota
			@notaAhDecompor = @notaAhDecompor % nota

			puts ("#{n} notas de #{nota}")
		end

		if @notaAhDecompor > 0 
			p ("------------")
			puts("Sobrou: #{@notaAhDecompor} real")
			loop()
		end
	end
end

separador = SeparadorDeNotas.new()
separador.loop()