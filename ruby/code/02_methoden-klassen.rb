# Methoden:
# a. definieren Sie eine Methode say_hello mit dem Argument name. Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'
def say_hello (name)
	puts "Ich bin Ludwig"
end

# b. rufen Sie die Methode mit verschiedenen namen auf
def say_hello (name)
	"Ich bin #{name}"
end
puts say_hello("Ludwig")
puts say_hello("Hans")
puts say_hello("Tim")
# c. puts soll nun aus der Methode entfernt werden
def say_hello (name)
	"Ich bin #{name}"
end
# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'
def say_hello (name, health=0)
	"Ich bin #{name} mit einem Wert von #{health}"
end
puts say_hello("Ludwig",100)

# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'def say_hello (name)
def say_hello (name, health=0)
	"Ich bin #{name} mit einem Wert von #{health} um #{Time.now.strftime("%H:%M")}"
end

puts say_hello("Ludwig",100)

# Klassen:
# a. erstellen Sie eine Klasse mit der Bezeichnung Player
class Player

end
# b. erstellen Sie ein Objekt player1 der Klasse 
class Player

end
obj_player1 = Player.new("Hans")
# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
def initialize(name, health=100)
			@name =name
			@health = health
		end	
# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
# e. setzen Sie fuer health einen Standardwert 100
# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.


# class Player

# 	def say_hello (name, health=0)
# 	"Ich bin #{name} mit einem Wert von #{health} um #{Time.now.strftime("%H:%M")}"
# 	end

# 		def initialize(name, health=100)
# 			@name =name
# 			@health = health
# 		end	
		
		
# end

# obj_player1 = Player.new('Peter', 4)
# puts obj_player1.to_s
# oby_player2 = Player.new('Hans')
# puts player1.say_hello.initialize