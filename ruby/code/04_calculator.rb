# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Calculator
		def initialize(pzahl1, pzahl2=0)
			@zahl1 = pzahl1
			@zahl2 = pzahl2
		end


		def add
			@ergebnis=@zahl1+@zahl2
			puts"ergebnis ist: #{@ergebnis}"
		end

		def substract
			@ergebnis=@zahl1-@zahl2
			puts"ergebnis ist: #{@ergebnis}"
		end

		
end

rechnung1=Calculator.new(5,6)
rechnung1.add
rechnung1.substract