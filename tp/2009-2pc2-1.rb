#Ajara
class Coordenadas
	def zona(x,y)
		if (0<x and x<1) and (0<y and y<1)then
			#zona 1
			zona1 = ((x<y and y<(1-x)) or (((1-x)<y and y<x) and ((x**3)<y and y<x)))
			#zona 2
			zona2 = (((1-y)<x and x<y) or ((y<x and x<1-y) and ((x**3)<y and y<x)))
			#zona 3
			zona3 = y < x**3
			if zona1 then 
				return 1
			elsif zona2 then
				return 2
			elsif zona3 then
				return 3
			end
		end
	end
end

#Sean x e y la coordenadas
x = rand
y = rand
#descomentar lo siguiente pra ingresar los puntos manualmente
#puts "Ingrese las coordenadas:"
#x = gets.to_f
#y = gets.to_f
coord = Coordenadas.new
puts "("+x.to_s+","+y.to_s+")"
case coord.zona(x,y)
	when 1 then
		puts "El punto se encuentra en la zona 1."
	when 2 then
		puts "El punto se encuentra en la zona 2."
	when 3 then
		puts "El punto se encuentra en la zona 3."
	else
		puts "Fuera de Rango"
end
