class Game
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(player)
		@players << player 
	end
	def play
		puts "#{@title}'s Game"
		@players.each do |xyz|
			puts xyz.blam
			puts xyz.w00t
			puts xyz.w00t
			puts xyz
		end

	end
	def to_s
		@players.size.to_s
	end
end


class Player
def initialize(pname, phealth=100)
			@name = pname
			@health = phealth
	end

	def to_s
	"Ich bin #{@name} mit einem Wert von #{@health}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!!"
	end

	def w00t
		@health += 10
		puts "#{@name} wurde um 10 gew00tet!!! Aktueller Stand: #{@health}"
	end

end	
player1 = Player.new('Tim')

player2 = Player.new('Marvin')

player3 = Player.new('Daniel')

spiel1 = Game.new("Knuckleheads")
spiel1.add_player(player1)
spiel1.add_player(player2)
spiel1.add_player(player3)
spiel1.play



