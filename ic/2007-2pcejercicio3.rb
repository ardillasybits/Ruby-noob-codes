#codemonkey
class Estaciones
	def estacion(mes, hemisferio)
		case hemisferio
			when "N","n","norte","Norte","NORTE"		
			case mes
				when 1,2,12 
				norte = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"VERDADERO"}
				return norte
						
				when 6,7,8
				norte = {"Primavera"=>"FALSO","Verano"=>"VERDADERO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return norte

				when 9,10,11
				norte = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"VERDADERO","Invierno"=>"FALSO"}
				return norte

				when 3,4,5
				norte = {"Primavera"=>"VERDADERO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return norte
				else
				norte = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return norte
			end
			when "S","s","sur","Sur","SUR"
			case mes
				when 1,2,12 
				sur = {"Primavera"=>"FALSO","Verano"=>"VERDADERO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return sur
						
				when 6,7,8
				sur = {"Primavera"=>"VERDADERO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return sur

				when 9,10,11
				sur = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"VERDADERO"}
				return sur

				when 3,4,5
				sur = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"VERDADERO","Invierno"=>"FALSO"}
				return sur
				else
				sur = {"Primavera"=>"FALSO","Verano"=>"FALSO","Otono"=>"FALSO","Invierno"=>"FALSO"}
				return sur
			end
		end	
	end
end
system("clear")
opcion = ""
respuesta = Estaciones.new

until (opcion == "y")

puts "Eliga un hemisferio: [N] Norte. [S] Sur"
hemisferio = gets.chomp

puts "Eliga un mes (1-12)"
mes = gets.to_i

lista = respuesta.estacion(mes, hemisferio)
puts "----------"
lista.each_pair do |llave,valor|
puts llave + " => " + valor
end
puts "---------"
puts "Salir del programa? [y/n]"
opcion = gets.chomp
end
