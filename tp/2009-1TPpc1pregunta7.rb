class Operaciones
	def parteA(teta, phi)
		resultado = Math.tanh((phi**2)+1)/Math.log(Math.acos(teta**(teta+phi*2.5)), phi)
		return resultado
	end

	def parteB(teta, phi)
		resultado = 3.75*((teta**3)+phi)**(1/7)
		return resultado
	end
end

numero = Operaciones.new
system("clear")
puts "Ingrese teta: "
teta = gets.to_f
puts "Ingrese phi: "
phi = gets.to_f

a = numero.parteA(teta, phi)
b = numero.parteB(teta, phi)

resultado = a/b
puts "####"
puts "El resultado de la ecuacion es..."
puts resultado
