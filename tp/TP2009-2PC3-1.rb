class Cifrado
	def posicionCoincidencia(lista, clave)
		contador = 0
		comienzo = 0
		lista.each_char do |letra|
		if letra == clave then
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
clave = ""

puts "Ingrese los caracteres del alfabeto usado: "
alfabeto = gets.chomp
#note: if it's a string, we can acces it as an array: alfabeto[2]

puts "Ingrese la clave a usar: "
clave = gets.chomp

alfabeto_cifrado = {}

contador_clave = 0
nuevos = []
lectura = File.new("texto.txt")

while caracter = lectura.getc
	caracter.chomp
	if contador_clave > clave.length then
	contador_clave = 0
	end

	comienzo = operador.posicionCoincidencia(alfabeto, clave[contador_clave])
	alfabeto_cifrado = operador.cifrar(alfabeto, comienzo)

	nuevos << alfabeto_cifrado[caracter]
	contador_clave += 1
end

puts nuevos.inspect
lectura.close

