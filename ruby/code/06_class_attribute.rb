# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score



class Player
	attr_reader :health
	attr_accessor :name
 		def initialize(pname, phealth = 100)
 			@name = pname
 			@health = phealth
 		end

 		def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
 		end

 		def blam
 			@health -= 10
 			puts "#{@name} wurde geblamt"
 		end

 		def w00t
 			@health += 10
 			puts "#{@name} got w00ted"
 		end
 		def score
 			@health + @name.length
 		end

end

player1 = Player.new("Ludwig", 110)
player2 = Player.new("Wilhelm")
puts player2.health
player1.name = "Willi"
puts player1.name
puts player1.score
puts player1.to_s
players = [player1, player2]

players.each do |var| 
		var.blam
		puts var
end
 
