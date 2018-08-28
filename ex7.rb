# FaçaumProgramaqueleiaumnúmerointeiromenorque1000 e imprima a quantidade de centenas, dezenas e unidades do mesmo.
# • Observando os termos no plural a colocação do "e", da vírgula entre outros. Exemplos:
# • 326 = 3 centenas, 2 dezenas e 6 unidades
# • 12 = 1 dezena e 2 unidades
# Testar com: 326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7 e 16.

class Divide
	def initialize()
		puts("Digite um valor menor que 1000 a ser dividido!")
		@valor = gets.chomp.to_i
		
		if @valor >= 1000
			puts("Valor maior que 1000 vacilão!")
			initialize()
		end
	end

	def dividir()
		array = [100, 10, 1]
		arrayAux = []
		array.each do |a|
			v = @valor / a
			@valor = @valor % a	
		
			arrayAux << v
		end

		frase = ""
		if arrayAux[0] > 0
			frase = arrayAux[0].to_s + " centena"
			if arrayAux[0] > 1
				frase +="s"
			end
		end
		
		if arrayAux[1] > 0
			if arrayAux[0] > 0
				frase +=(arrayAux[2] > 0 ? ", " : " e ")
			end
			frase += (arrayAux[1].to_s + " dezena")
			if arrayAux[1] >1
				frase += "s"
			end
		end

		if arrayAux[2] > 0
			frase += (arrayAux[1] > 0 ? " e " : " ")
			frase += arrayAux[2].to_s + " unidade"
			if arrayAux[2] > 1
				frase += "s"
			end
		end
		puts frase
	end
end

ex7 = Divide.new()
ex7.dividir()