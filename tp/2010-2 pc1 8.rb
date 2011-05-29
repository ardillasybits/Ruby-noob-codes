numero = gets.to_i
binario = numero.to_s(2)
bin = Array.new(7,0)
posicion = 0
binario.reverse.each_char do |bit|
	bin[(7-posicion)] = bit.to_i
	posicion = posicion + 1
end
#puts bin.inspect

orden = [ "Primer", "Segundo", "Tercero", "Cuarto", "Quinto", "Sexto", "Septimo", "Octavo" ]
posicion = 0

bin.each do |bit|
	puts orden[posicion] + " bit: " + bit.to_s
	posicion = posicion + 1
end
