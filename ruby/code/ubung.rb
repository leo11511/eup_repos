class Calculator
	attr_accessor :zahl1, :zahl2

	def initialize(pzahl1, pzahl2)
		@zahl1 = pzahl1
		@zahl2 = pzahl2
	end

	def sub
		@ergebniss = @zahl1-@zahl2
			puts "Das Ergebniss ist #{@ergebniss}"
	end

	def add
		@ergebniss = @zahl1+@zahl2
			puts "Das Ergebniss ist #{@ergebniss}"
	end

end

rechnung1 = Calculator.new(5,6)
rechnung1.sub
