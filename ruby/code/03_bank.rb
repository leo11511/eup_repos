# Einrichten einer Kundenklasse.
# Eine Klasse customer soll eingerichtet werden.
class Customer

		def initialize(kontonummer,nachname,strasse,ort)
			@bank_account = kontonummer
			@lastname = nachname
			@street = strasse
			@where = ort
		end

		def print_adress
			puts "#{"Konto".ljust(40,'.')}#{@bank_account}"
			puts "#{"Name".ljust(40,'.')}#{@lastname}"
			puts "--------------------------------------------"
			puts "#{"Konto".ljust(10,'.')}#{@bank_account.rjust(40,'.')}"
			puts "#{"Name".ljust(10,'.')}#{@lastname.rjust(40,'.')}\n"
			puts "#{"Strasse".ljust(10,'.')}#{@street.rjust(40,'.')}\n"
			puts "#{"Ort".ljust(10,'.')}#{@where.rjust(40,'.')}\n"
			
		end






end
kunde1 = Customer.new("123456789","Hans","Schusterkamp","Hamburg")
puts kunde1.print_adress

# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.

# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)

# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
# Konto:................9999
# Name:.................Theo Lodgz
# Strasse:..............Hermelinweg 7
# Ort:..................22159 Hamburg

# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.