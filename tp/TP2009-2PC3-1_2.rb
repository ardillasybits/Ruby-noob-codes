#Ajara
#This is the solution of problem 1 of PC3 in 2009-2 semester
#
################################################################################
#According to the problem's text, only arrays of characters should be used. Due 
#to Ruby's nature, this can't be accomplished; however, there will be some sort
#of emulation of this type of array in order to avoid using string methods, as
#the problem suggests.
#
#The required files will be "codigo.txt" and "texto.txt". The program
#requires to enter an "alfabeto" and a "clave" through the keyboard. In this
#solution aditional methods calling files "alfabeto.txt" and "clave.txt" have
#been added to ease this process but are commented by default.
#
#Ok let's begin.

#First, we must read the text files and save them to proper constants.

#Here we read the "alfabeto". Here are given 2 methods. One uses the keyboard to
#enter it, the other one reads it from a text file.

#Using keyboard. Saving it as an array of characters. Name it alphabet

alphabet = Array.new

#char = "foo"
#until char == "" do
#	char = gets.chomp
#	unless char == "" then
#	alphabet << char
#	end 
#end

#Using "alfabeto.txt" file. Chomp doesn't work correctly. Using "unless '\n'"
#
File.new("alfabeto.txt", "r").each_char do |char|
	unless char == "\n" then
		alphabet << char
	end
end

#Now we read the "clave". Again both methods using keyboard and a text file.

#Using keyboard. Saving as an array of characters, Name it key.

key = Array.new

#char = "foo"
#until char == "" do
#	char = gets.chomp
#	unless char == "" then
#	alphabet << char
#	end 
#end

#Using "codigo.txt" file.
#
File.new("codigo.txt", "r").each_char do |char|
	unless char == "\n" then
		key << char
	end
end

#Here we read the file containig the message to encrypt. Name it message as an
#array. Each line of the message is stored as an element of the array. That way,
#calling message[0] returns a string with the first line of the text to encrypt.
#We are going to save it as an object of a new class named message.

class Message < Array
	
end

message = Message.new

File.new("texto.txt", "r").each_line do |line|
	unless line == "\n" then
	message << line.chomp
	end
end

#Here's the funny part. We'll apply the encoding through the method "encode"
#which is yet to be defined. Since the problem suggests using arrays of
#characters, we are going to make a new array out of each line to work with;
#apply the encoding and save the output to a new array.

#defining the encode method inside the Message class

class Message
	def encode(alphabet, key)
	#first it creates the alphabets for each letter in the key.  Let it be
	#an array of arrays named alphabets.
	
	alphabets = Array.new
	line_new = ""
	char_new = ""
	i=0
    key.each do |letter|
	    last=[]
	    first=alphabet.dup
	    alphabet_new=[]
	    alphabet.each do |character|
			    if character != letter then
				    last << first[0]
				    first.delete_at(0)
			    else
				    break
			    end	

	    end

	    alphabet_new = first + last
	    alphabets  <<  alphabet_new
    end
    puts alphabets.class
    #We set the index of each letter in the original alphabet and take it's 
    #counterpart in the new alphabet. Then it's added to the new encoded line.
    
    self.each do |line|
    
        line.each_char do |char|
            ind = alphabet.index(char)
            alph = alphabets[i]
            puts alph.inspect
            char_new = alph[ind]
            line_new = line_new + char_new
            if i != key.length then
                i = i+1
            else
                i = 0
            end
        end
        message_new << line_new
    end
    return message_new
    end
end
#Using an array of characters. Name it characters. All output will be saved to a
#new array. Name it encoded.

puts message.encode(alphabet, key).inspect
