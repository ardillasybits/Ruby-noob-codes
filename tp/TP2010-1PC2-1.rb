class Funciones

def randomNumber()
denuevo = 1
until denuevo == 0
	num_random = rand() #random number
	num_random *= 1000000
	num_random = num_random.to_i.to_s
	i = contador = 0
	if num_random.length == 6 then
		while i < num_random.length
		j = 0
			while j < num_random.length
				if num_random[i] == num_random[j] then
					contador += 1
				end
			j += 1
			end
		i += 1
		end
	end
	if contador == 6 then
		denuevo = 0
	else
		denuevo = 1
	end
#if denuevo = 1, it will create another random number.
#also checks if there is no a 0 at the beggining of the number
end

return num_random
end

def comparacionGeneral(num_random, num_usuario)
i=0
contador = 0
while i< 6
j = 0
	while j < 6
		if num_random[i] == num_usuario[j] then
			contador += 1
		end
	j += 1
	end
i += 1
end

return contador
end

def comparacionCifras(num_random, num_usuario)
i=0
contador = 0
while i< 6
j = 0
	while j < 6
		if num_random[i] == num_usuario[j] and i==j then
			contador += 1
		end
	j += 1
	end
i += 1
end

return contador
end

end

numeros = Funciones.new 
intentos = 0
nombre = ""
cerrar = 0

until cerrar == 1
puts "Ingrese su nombre. (fin si es que quiere cerrar)"

nombre = gets.chomp
if nombre == "fin" then
exit
end

#each time user enters a new name, we get a new number
numero_aleatorio = numeros.randomNumber #new random number!

adivino = 0 #if he guessed the numer, adivino = 1
until adivino == 1

total_cifras = 0
until total_cifras == 6 
puts "Ingrese un numero de 6 cifras: "
numero_usuario = gets.to_i
total_cifras = numero_usuario.to_s.length
end
#we just checked if the user puts a number.length 6, if not, we ask again.

numero_usuario = numero_usuario.to_s #so we can use it as an array.
comparacion_general = numeros.comparacionGeneral(numero_aleatorio, numero_usuario)
comparacion_cifras = numeros.comparacionCifras(numero_aleatorio, numero_usuario)

puts numero_aleatorio #uncomment if you wanna cheat! (or test)

fuera_lugar = comparacion_general - comparacion_cifras
en_lugar = comparacion_cifras
puts "Numero de cifras en su lugar: " + en_lugar.to_s
puts "Numero de cifras en fuera de lugar: " + fuera_lugar.to_s

intentos += 1
if en_lugar == numero_aleatorio.length then
adivino = 1 #if he guessed the numer, adivino = 1
end

end
end
