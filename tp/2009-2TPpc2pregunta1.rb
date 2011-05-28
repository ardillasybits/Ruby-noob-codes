#codemonkey
class Funciones
	def f1(x)
		return x
	end
	
	def f2(x)
		return (1-x)
	end
	
	def f3(x)
		return (x**3)
	end
end

funcion = Funciones.new
a = rand
b = rand

zona = (a >= 0 and a <= 0.5 and b > funcion.f1(a) and b < funcion.f2(a)) ? "Zona 1" : zona
zona = (a >= 0.5 and a <= 1 and b > funcion.f3(a) and b < funcion.f1(a)) ? "Zona 1" : zona

zona = (a >= 0 and a <= 1 and b > funcion.f3(a) and b < funcion.f2(a) and b < funcion.f1(a) and b <= 0.5) ? "Zona 2" : zona
zona = (a >= 0 and a <= 1 and b > funcion.f2(a) and b > funcion.f1(a) and b >= 0.5 and b <= 1) ? "Zona 2" : zona

zona = (a >= 0 and a <= 1 and b < funcion.f3(a) and b >= 0) ? "Zona 3" : zona
puts a
puts b
puts "###"
puts zona
