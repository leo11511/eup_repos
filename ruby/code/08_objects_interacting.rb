class Game
	attr_reader :health
	def initialize(title)
		@title = title
		@players = []

	end

	def add_player(player)
		@players << player 
	end
	def play
		puts "Da sind #{@players.count} in #{@title}'s Team"
		@players.each do |b|
			puts b
		end
		@players.each do |xyz|
			puts xyz.blam
			puts xyz.w00t
			puts xyz.w00t
			puts xyz
		end
	end

end


class Player
def initialize(pname, phealth=100)
			@name = pname
			@health = phealth
			@score = pname.length + @health

	end

	def to_s
	"Ich bin #{@name} mit einem health von #{@health} und ein Score von #{@score}"
	end

	def blam
		@health -=10
		"#{@name} wurde geblamt!!!"
	end

	def w00t
		@health += 10
		"#{@name} wurde um 10 gew00tet"
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




