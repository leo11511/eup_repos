class Player
 		def initialize(pname, phealth = 100)
 			@name = pname
 			@health = phealth
 			@score = @health+@name.length
 		end

 
 		def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{@score}"
 		end

 		def blam
 			@health -= 10
 			"#{@name} wurde geblamt"
 		end

 		def w00t
 			@health -= 10
 			"#{@name} got w00ted"
 		end
 		
 end