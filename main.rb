#01- Crie um algoritmo que receba o nome como entrada e nós dê como saída o nome
#digitado e o comprimento do mesmo.

puts "digite seu nome:"
nome = gets.chomp
puts "#{nome} #{nome.size} caracteres"

#02- Escreva um algoritmo que aceita uma string e retorne os caracteres na ordem
#inversa

puts "Digite algo:"
nome = gets.chomp
nome.reverse!
puts nome

#03-Receba uma string e imprima metade da mesma.

puts "Digite alguma mensagem: "
s2 = gets.chomp
puts +s2.slice(0..(s2.length/2)-1)

#04- Faça o somatório da sua data de nascimento.
require "time"
puts "Digite sua data de nascimento:"
data = gets.chomp
t = Time.now
t = t.strftime("%d/%m/%Y")
t = t.split("/").map(&:to_i)
data = data.split("/").map(&:to_i)
soma = 0
texto = ""
for i in data do
  aux = i
	text_aux = ""
	while aux>0
    if text_aux == ""
			text_aux += (aux%10).to_s
		else
			text_aux += "+"+(aux%10).to_s
		end
		soma+=aux%10
		aux /= 10
		end
		if texto == ""
			texto +=  text_aux.reverse
		else
			texto +=  "+"+text_aux.reverse
		end
	end
  puts "Soma da sua data de nasciemento: #{texto} = #{soma}"

#05 - Leia um número inteiro que representa um código de DDD para discagem
#interurbana. Em seguida, informe à qual cidade o DDD pertence, considerando a tabela
#abaixo:

puts "Digite DDD:"
local = gets.chomp.to_i
case local
when 61
 puts "Brasília"
when 71
 puts "Salvador"
when 11
 puts "Sao Paulo"
when 21
 puts "Rio de janeiro"
when 32
 puts "Juiz de fora"
when 19
 puts "Campinas"
else
 puts "DDD nao cadastrado"
end

#06- Faça um programa que, dado um número a partir do qual deve-se começar a
#contagem regressiva, imprima na tela a contagem regressiva desse número até 0. Ao final
#da contagem, imprima a mensagem KABUM

puts("digite numero:")
x = gets.chomp.to_i
while x > 0
 x=x-1
 puts x
end
puts "KABUM"
