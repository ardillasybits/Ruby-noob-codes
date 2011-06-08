# -*- coding: utf-8 -*-

#Defining constants.
L = 50.0    #length of the field,
H = 2.5     #height of the board.
PI = Math::PI
G = 9.8  #Gravity value

#Defining position. Let it be an array containing coordinates for each
#player

class Shot
    def position(vo, ang, tgap)
        flytime = (2*vo*Math.sin(ang))/G
        pos = []
        lastrange = 0
        t = 0
        x = 0
        i = 0
        while x < L do
            if 0 <=t and t <= flytime then
                 compy = Math.sin(ang)
                compx = Math.cos(ang)
                x = vo*compx*t + lastrange
                y = vo*compy*t - 0.5*G*t**2
                t = t + tgap
                pos << [x, y]
            else
                lastrange = ((vo**2)*Math.sin(2*ang))/G
                t = (t-flytime)
                ang = ang*0.85
                vo = vo*0.85
                flytime = (2*vo*Math.sin(ang))/G
                if flytime == 0 then
                    puts "Velocidad de lanzamiento insuficiente. Lanza con mayor velocidad."
                    break
                end
            end
        end
        return pos
    end
end

#Defining variables to be read.
puts "Ingrese los datos solicitados:"
puts "nombre del 1º jugador:"
name1 = gets
puts "nombre del segundo jugador:"
name2 = gets
puts "Velocidad inicial 1 (en m/s):"
initv1 = gets.to_f
puts "Velocidad inicial 2 (en m/s):"
initv2 = gets.to_f
puts "Ángulo de inclinación 1(sexagesimal):"
ang1 = gets.to_f
ang1 = ang1*PI/180
puts "Ángulo de inclinación 2(sexagesimal):"
ang2 = gets.to_f
ang2 = ang2*PI/180
puts "tiempo entre las mediciones(segundos):"
tgap=gets.to_f

player1=Shot.new
t = 0
puts "Jugador 1: " + name1
player1.position(initv1, ang1, tgap).each do |coord|
    puts "para t="+t.to_s
    puts "("+coord[0].to_s+";"+coord[1].to_s+")"
    t = t + tgap
end

#second player
player2 = Shot.new
t = 0
puts "Jugador 2: " + name2
player2.position(initv2, ang2, tgap).each do |coord|
    puts "para t="+t.to_s
    puts "("+coord[0].to_s+";"+coord[1].to_s+")"
    t = t + tgap
end

