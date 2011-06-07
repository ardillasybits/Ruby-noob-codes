class Numeric
	def degrees
		self * Math::PI / 180 # so .degrees will conver the number to radians
	end
end

class TiroBlanco

	def Xposition(velocidad, angulo, tiempo)
		x = velocidad * tiempo * Math.cos(angulo.degrees)
		return x
	end

	def Yposition(velocidad, angulo, tiempo)
		y = (velocidad * Math.sin(angulo.degrees) * tiempo) - (0.5 * 9.8 * (tiempo**2))
		return y
	end

end

LONGITUD = 10 #constant

coordenadas = TiroBlanco.new

puts "Ingrese la altura de la tabla: "
altura = gets.to_f

puts "Ingrese el valor de la velocidad inicial: "
velocidad_inicial = gets.to_f

puts "Ingrese el valor del angulo inicial: "
angulo_inicial = gets.to_f

puts "Ingrese los intervalos de tiempo a usar: "
intervalos = gets.to_f

zona_caida = altura/2

tiempo_inicial = 0
posicionX = 0
longitudX = 0

until longitudX >= LONGITUD

posicionX = coordenadas.Xposition(velocidad_inicial, angulo_inicial, tiempo_inicial)
posicionY = coordenadas.Yposition(velocidad_inicial, angulo_inicial, tiempo_inicial)

if posicionY <= 0 then
	velocidad_inicial = velocidad_inicial * 0.85
	angulo_inicial = angulo_inicial * 0.85
	posicionY = 0 #we reset Y position because it can't be underground...
end

puts "#######"
puts "Tiempo: "
puts tiempo_inicial
puts "Posicion X : "
puts posicionX.to_f
puts "Posicion Y : "
puts posicionY.to_f
puts "#######"

longitudX = posicionX #finish the until here because we want all messages to appear!
tiempo_inicial += intervalos
end
