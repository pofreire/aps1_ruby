 	puts ("Insira a primeira nota")
	nota1 = gets.chomp
	puts ("Insira a segunda nota")
	nota2 = gets.chomp

	if(nota1.empty? || nota2.empty?)
		puts ("você não inseriu as duas notas!")
	end

	media = ((nota1.to_f + nota2.to_f)/2);
	imprimir = ('Nota 1=' + nota1.to_s + ', Nota 2=' + nota2.to_s + ', Média=' + media.to_s)

	if (media >= 9) && (media <= 10)  	
		puts(imprimir, 'Conceito=A', 'APROVADO')
	end

	if (media >= 7.5) && (media < 9)  	
		puts(imprimir, 'Conceito=B', 'APROVADO')
	end

	if (media >= 6) && (media < 7.5)  	
		puts(imprimir, 'Conceito=C', 'APROVADO')
	end

	if (media >= 4) && (media < 6)  	
		puts(imprimir, 'Conceito=D', 'REROVADO')
	end

	if (media >= 0) && (media < 4)  	
		puts(imprimir, 'Conceito=E', 'REROVADO')
	end