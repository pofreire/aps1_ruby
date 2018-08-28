# Escreva um programa Velha Surda. O que quer que você diga à velha (o que quer que você digite),
# ela tem que responder com QUE?! FALA MAIS ALTO!, a não ser que você grite (digite tudo em maiúsculas).
# Se você gritar, ela pode lhe ouvir (ou ao menos pensa que pode), e sempre responde NÃO, NÃO DESDE 1938!
# Para fazer seu programa ser realmente verossímil, faça a velha gritar um número diferente a cada vez; 
# talvez qualquer ano aleatório entre 1930 e 1950. Você não pode parar de falar com a velha enquanto 
# não gritar TCHAU três vezes em sequência. Teste bem o seu programa: se você gritar TCHAU três vezes,
#  mas não em seqüência, você tem que continuar falando com a velha.
array = []
arrayTchau = ["TCHAU","TCHAU","TCHAU"]

while array != arrayTchau
	puts("Fale com a velha maluca!")
	fala = gets.chomp

	if fala == fala.upcase
		puts ("NÃO, NÃO DESDE #{rand(1930..1950)}!")
	else
		puts("QUE?! FALA MAIS ALTO!")
	end
	
	if(array.size > 2)
		array.shift 
	end
	array << fala
end