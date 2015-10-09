# 1.  Klasse Kunde
# 1a. Legen Sie eine Eigenschaft name und adresse in der Klasse Kunde an. Für die Eigenschaft name gibt es einen Lese- und Schreibzugriff, fuer die Eigenschaft adresse einen Schreibzugriff. OK
# b. Die Eigenschaft name enthält den Vor- und Zunamen des Kunden. Diese Eigenschaft wird beim Anlegen des Objektes übergeben. Schreiben Sie den entsprechenden Konstruktor. OK
# c. Erzeugen Sie ein Objekt mit dem Namen 'kunde1' und dem Initialwert: 'Theo Sommer' OK
# d. Ändern Sie die Eigenschaft 'name' des Objektes in: 'Theo Sonnenschein'  OK
# e. Schreiben Sie den Befehl, der den Namen auf der Konsole ausgibt.  OK
# f. Fügen Sie der Klasse Kunde die Eigenschaft gehalt hinzu, die sowohl gelesen als auch geschrieben werden kann. Schreiben Sie den Befehl auf, der das Gehalt des Objektes als Konsolenbefehl auf 2000 setzt. OK
# g. Die Eigenschaft adresse bekommt folgenden String uebergeben: Hermelinweg 11, 22159 Hamburg   OK
# h. Schreiben Sie eine  Getter-Methode' für die Klasse Kunde, für die Eigenschaft adresse die folgende Ausgabe produziert: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg.'  und geben sie das auf der Konsole aus.  OK
# i. Zusatz optional: Sichern Sie, dass im String Theo Sonnenschein sowohl Theo, als auch Sonnenschein jeweils mit einem Grossbuchstaben beginnen
class Kunde
	attr_accessor :name
	attr_writer :adresse
	attr_accessor :gehalt
	def initialize(name, vorname, adresse, gehalt)
		@name = name
		@vorname = vorname
		@adresse = adresse
		@gehalt = gehalt
	end

	def ausgabe
		puts "#{@vorname.capitalize} #{@name.capitalize} und #{@adresse} Gehalt: #{@gehalt}"
	end
end

kunde1 = Kunde.new("sonnenschein","theo","Hermelinweg 11, 22159 Hamburg", 2000)
kunde1.ausgabe

puts "\n"
# 2. Klasse Kredit 
# a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft kunde (ohne Setter und Getter) und einem Konstruktor, der die Eigenschaft kunde füllt. Die Eigenschaft Kunde wird mit einem Kunden-Objekt initialisiert. Erzeugen Sie ein Objekt kredit1, dem Sie das bereits existierende Objekt kunde1 übergeben. OK
# b. Legen Sie eine Eigenschaft jahresgehalt an, die sowohl les- als auch schreibbar sein soll. Füllen Sie für das Objekt kredit1 die Eigenschaft mit einem Wert von 24000.  OK
# c. Legen Sie eine Getter-Methode für die Eigenschaft kunde an, die folgende Ausgabe erzeugt: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg. Jahresgehalt: 24000 Euro.'  OK
# d. Fügen Sie eine Eigenschaft kreditsumme hinzu, auf die lesend und schreibend zugegriffen werden kann. Speichern Sie für das bestehende Objekt in der Eigenschaft kredit den Wert 5000. OK
# e. Fügen Sie eine Methode kreditvergabe hinzu. Diese Methode prüft, ob der Kredit vergeben werden kann. Die Vergabe ist abhängig davon, ob das Jahresgehalt mehr als 6 mal so groß ist, wie die kreditsumme. Falls der Kredit gewährt wird, erfolgt die Ausgabe: Der Kredit in Hoehe von 5000 € kann gewaehrt werden. Anderfalls: Sorry: kein Kredit. Besseren Job suchen. OK2
# f. Ergänzen Sie die Klasse mit einer Methode abzahlung, der ein Parameter 'monate' mitgegeben wird. Die Methode dividiert den Kreditbetrag durch die 'Monate' und gibt aus, wie groß der abzuzahlende Betrag pro Monat ist. Die AUsgabe lautet: Bei einer Rückzahlung des Kredits von 5000 € innerhalb von 10 Monaten ist pro Monat eine Zahlung von 500 € notwendig.
class Kredit
	attr_accessor :jahresgehalt
	attr_accessor :kreditsumme
	def initialize(kunde, jahresgehalt, kreditsumme=5000)
		@kunde = kunde
		@jahresgehalt = jahresgehalt
		@kreditsumme = kreditsumme
	end

	def jahresverdienst
		puts "#{@kunde}. Jahresgehalt: #{jahresgehalt}"
	end

	def kreditvergabe
		if @jahresgehalt * 6 >= @kreditsumme
			puts "Der Kredit in Hoehe von #{kreditsumme} kann gewährt werden."
		else
			puts "Sorry: kein Kredit. Besseren Job suchen."
		end
	end
end


kredit1 = Kredit.new(kunde1.ausgabe, 24000)
kredit1.jahresverdienst
kredit1.kreditvergabe

puts "\n"