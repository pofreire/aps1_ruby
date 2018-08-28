# Tipo de Serviço - Dia de Trabalho (R$) - Cada Viagem (R$)
# Projeto 				200,00 				1000,00
# Auditoria 			100,00				1500,00
	
class ValorConsultoria
	def initialize()
		puts("Qual o tipo de serviço desejado? 1=Projeto, 2= Auditoria")
		@tipoServico = gets

			if (@tipoServico.to_i == 1 || @tipoServico.to_i == 2)
				puts("Quantos dias trabalhados?")
				@diasTrabalhados = gets

				puts("Quantos dias viajados?")
				@diasViajados = gets
			else
				puts("Tipo inválido!")
			end
	end

	def cacularValor()
		if (@tipoServico.to_i == 1)
			resultado = (@diasTrabalhados.to_i * 200) + (@diasViajados.to_i * 1000)
		else
			resultado = (@diasTrabalhados.to_i * 100) + (@diasViajados.to_i * 1500)
		end

		if @tipoServico == 1
			tipo = "Projeto"
		else
			tipo = "Auditoria"
		end

		puts ("Tipo de serviço: "+ tipo.to_s)
		puts ("N.º dias trabalhados: "+ @diasTrabalhados.to_s)
		puts ("N.º de viagens realizadas: "+ @diasViajados.to_s)
		puts ("Valor total do serviço: "+ resultado.to_s)
	end
end

a=ValorConsultoria.new()
a.cacularValor();