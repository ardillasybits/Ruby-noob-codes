#codemonkey
class Convertir
	def aFarenheit(celcius)
		nuevaTemp = ((celcius*9)/5) + 32
		return nuevaTemp
	end
	
	def aCelcius(farenheit)
		nuevaTemp = (farenheit-32)*5/9
		return nuevaTemp
	end
end

system("clear")
opcion = ""
temperatura = Convertir.new
until opcion == "3"

puts "####Conversor de temperaturas####"
puts "[1] De Farenheit a Celcius"
puts "[2] De Celcius a Farenheit"
puts "[3] Salir"
puts "####"

seleccion = gets.chomp

case seleccion
	when "1"
		puts "##Ha elegido de Farenheit a Celcius##"
		puts "Ingrese la temperatura a convertir: "
		nueva = gets.to_f
		puts "La temperatura en Celcius es de: "
		puts temperatura.aCelcius(nueva)
		puts ""

	when "2"
		puts "##Ha elegido de Celcius a Farenheit##"
		puts "Ingrese la temperatura a convertir: "
		nueva = gets.to_f
		puts "La temperatura en Farenheit es de: "
		puts temperatura.aFarenheit(nueva)
		puts ""
	when "3"
		opcion = "3"
end

end
