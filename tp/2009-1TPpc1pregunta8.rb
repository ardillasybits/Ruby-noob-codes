class Convertir
	def base10a2(int)
        const = 128;
    	resultado = "";
    
    	i = 0;
   	 #8 es el numero de bites!
   	 while i < 8
        	 #parte magica
       		 if ((int & const) != 0)
         	   resultado = resultado + "1";
       		 else
        	   resultado = resultado + "0";
       		 end
            
         const = const >> 1;
         i = i + 1;
   	 end
  
 	return resultado;
	end
end

numero = Convertir.new
binario = numero.base10a2(5);
contador = 0
binario.reverse.each_byte do |peque|
puts "El numero " + contador.to_s + " es: " + peque.chr
contador += 1
end

