class Cifrado
	def posicionCoincidencia(lista, clave)
		contador = 0
		comienzo = 0
		lista.each_char do |letra|
		if letra == clave[0] then
			comienzo = contador
			return comienzo
		end
		contador += 1
		end
		return 0
	end

	def cifrar(alfabeto, comienzo)
	i = 0
	alfabeto_cifrado = {}
	while  i < alfabeto.length
	if comienzo >= alfabeto.length then #if alfabeto[] ends, comienzo will reset to 0 and start from beggining.
		comienzo = 0
	end
	alfabeto_cifrado[alfabeto[i]] = alfabeto[comienzo]
	comienzo += 1
	i += 1
	end
	return alfabeto_cifrado
	end
end

operador = Cifrado.new
alfabeto = ""

puts "Ingrese los caracteres del alfabeto usado: "
alfabeto = gets.chomp
#nota: se aprovecha que si se ingresa como string, se puede acceder como array => puts alfabeto[2]

puts "Ingrese la clave a usar: "
clave = gets.chomp

alfabeto_cifrado = {}

comienzo = operador.posicionCoincidencia(alfabeto, clave)
alfabeto_cifrado = operador.cifrar(alfabeto, comienzo)


#puts alfabeto_cifrado.inspect
nuevos = []
contador = 0
lectura = File.new("texto.txt")

while caracter = lectura.getc
caracter.chomp
nuevos << alfabeto_cifrado[caracter]
end

puts nuevos.inspect
lectura.close

