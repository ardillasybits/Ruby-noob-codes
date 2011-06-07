# -*- coding: utf-8 -*-

#Defining constants.
L = 50.0    #length of the field,
H = 2.5     #height of the board.
PI = Math::PI

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

#Defining position. Let it be an array containing coordinates for each
#player

G = 9.8
class Player
    def position(vo, ang, time)
        compy = Math.sin(ang)
        compx = Math.cos(ang)
        x = vo*compx*time
        y = vo*compy*time-0.5*G*time**2
        coord = [x, y]
        return coord
    end
end

#Asking for the required time gap between position measurements.
puts "Intervalo de tiempo entre las mediciones:"
tgap = gets.to_f

#getting the data.

player1 = Player.new
player2 = Player.new
position1 = [0,0]  #initializing value
position2 = [0,0]

t = 0

until player1.position(initv1, ang1, t)[0] > L do
    if 0<=player1.position(initv1, ang1, t)[0] and player1.position(initv1, ang1, t)[0]<=(initv1**2*Math.sin(2*ang1))/G then
        puts "para t="+t.to_s
        0.upto(1) do |i|
            position1[i] = position1[i] + player1.position(initv1, ang1, t)[i]
        end
        puts position1
    else
        initv1 = initv1*0.85
        ang1 = ang1*0.85
        
    end
    t = t + tgap
end

t = 0 
until player2.position(initv2, ang2, t)[0] > L do
    if 0<=player2.position(initv2, ang2, t)[0] and player2.position(initv2, ang2, t)[0]<=(initv2**2*Math.sin(2*ang2))/G then
        puts "para t="+t.to_s
        i = 0
        0.upto(1) do |i|
            position2[i] = position2[i] + player2.position(initv2, ang2, t)[i]
        end
        puts position2
    else
        initv2 = initv2*0.85
        ang2 = ang2*0.85
    end
    t = t + tgap
end
