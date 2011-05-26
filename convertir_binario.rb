class Convertir
	def aBinario(numero, bits)
		binario = numero.to_s(2)
		bin = Array.new(binario.length,0)
		binario.each_char do |bit|
		bin = bin << bit.to_i
		end
	return bin
	end
end
system("clear")
numero = Convertir.new
puts "Ingrese el numero a convertir: "
dato = gets.to_i
puts "Ingrese la cantidad de bits que desea: "
bits = gets.to_i

binario = numero.aBinario(dato, bits)
puts "#####"
puts binario
