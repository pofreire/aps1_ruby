class Banco
	def menu()
		puts("1 - Depósito | 2 - Retirada | 3 - Saldo | 4 - Sair do algoritmo")
		@opcao = gets.chomp.to_i

		if(@opcao > 5 || @opcao < 1)
			puts ("Opção inválida!")
			menu()
		end		
	end

	def execucao()
		@valor = 0
		while @opcao >=1 && @opcao <= 4 
			if @opcao == 1
				puts ("Valor a ser depositado: ")
				valor = (valor.to_f + gets.chomp.to_f)
				menu()
			elsif @opcao == 2
				puts ("Valor a ser sacado: ")
				valor = (valor.to_f - gets.chomp.to_f)
				menu()
			elsif @opcao == 3
				puts ("Saldo: ")
				puts(valor)
				menu()
			else
				puts("Obrigado, volte sempre!")
				exit
			end
		end
	end
end

banco = Banco.new()
banco.menu()
banco.execucao()