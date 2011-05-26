class Calculadora
	def suma(lista)
		resultado = 0		
		lista.each do |numero|
		numero = numero.to_i
		resultado = resultado + numero
		end
	return resultado
	end
end
system("clear")
opcion = "queso"

puts "#####MENU#####"
puts "[0] Sumar numeros"
puts "[1] Restar numeros"
puts "[2] Salir"
puts "##############"
resultados = Calculadora.new

until opcion == "q" do

char = gets.chomp

case char
	when "0"
		opcion = "q"
	when "1"
		separar = char.split("+")
		aux = resultados.suma(separar)
		puts aux
	when "2"
		exit
end

end
