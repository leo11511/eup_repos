# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score



class Player
 		def initialize(pname, phealth = 100)
 			@name = pname
 			@health = phealth
 		end

 		def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health}"
 		end

 		def blam
 			@health -= 10
 			"#{@name} wurde geblamt"
 		end

 		def w00t
 			@health -= 10
 			"#{@name} got w00ted"
 		end

 		# def health
 		# 	@health
 		# end
 		attr_accessor:health
 		attr_accessor:name

 		def attribut
  			@ergebnis=@health+@name.bytesize

 		end

 end

 player1 = Player.new("Ludwig", 110)
 #puts player1.say_hello
 player2 = Player.new("Wilhelm")
 #puts player2.say_hello
 puts player2.blam

 players=player1,player2
 puts player1.health
 puts player1.name
 puts player1.name = "Bert"
 puts player1.attribut
 players_array=[player1,player2]
 zaehler=0
 while zaehler <2
 puts players_array[zaehler]
 zaehler+=1
end
