# # 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
# #zahl = ["15","16","17","18","19","20"]
# zahl = (15..20).to_a
# # a. geben Sie diese Zahlen in einem Block aus
# zahl.each do |i|
# 	puts i.to_s
# end
# # b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
# zahl.each_with_index do |z, i|
# 	puts "Index: #{i} - Wert: #{z}"
# end
# puts "\n"
# # # c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
# my_hash = Hash.new
# zahl.each do |val|
# 	my_hash[val] = rand(100..200)
# end
# puts my_hash
# puts "\n"
# # d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
# my_hash.each do |myKey, myVal|
# 	puts "Index: #{myKey} - Wert: #{myVal}"
# end
# # e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
# my_hash.each do |myKey, myVal|
# 	if myVal > 150
# 	puts "WOW: Index: #{myKey} - Wert: #{myVal}"
# 	else
# 	puts "Index: #{myKey} - Wert: #{myVal}"
# end
# end
# puts "\n"
# # f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# sec_array = Array.new
# zahl.each do |val|
# 	sec_array << val * val
# end
# puts sec_array
# # g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
# sec_array = Hash.new
# zahl.each do |i|
# 	sec_array[i] = i * i
# end
# puts sec_array
# puts "\n"
# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
primzahlen = [1,2,3,5,7,13,17,19,23]
primzahlen.each do |p|
	if p.to_s.length < 2
		puts "#{p} ist einstellig"
	else
		puts "#{p} ist zweistellig"
end
end
puts "\n"
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
person = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
person.each do |key,val|
	puts "#{key.capitalize}: #{val}\n"
end
puts "\n"

# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
prims = Hash.new
primzahlen.each do |p|
	prims[p] = p.to_s.length < 2 ? " ist einstellig" : " ist zweistellig"
end
puts prims
puts "\n"
# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..



# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

person = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
addressen = [person]
person = {vorname: "Harry", nachname: "Wurst", stadt: "Grünkohl"}
addressen << person
person = {vorname: "Ludmilla", nachname: "Och", stadt: "Peking"}
addressen << person
i = 1
addressen. each do |var|
	puts "#{i.to_s}. Person"
	var.each do |key,val|
		puts "#{key.capitalize}: #{val}\n"
	end
	i += 1
end
puts "\n"


################# Version 1.   ##################
# person1 = Hash.new
# person1 = {vorname: "Daniel", nachname: "Voß", stadt: "Lodz"}
# person2 = Hash.new
# person2 = {vorname: "Tim", nachname: "Leonhardt", stadt: "Mekka"}
# person3 = Hash.new
# person3 = {vorname: "Marvin", nachname: "Gruener", stadt: "Pankow"}
# 	puts "1. Person: \n Name: #{person1[:nachname]} \n Vorname: #{person1[:vorname]} \n Stadt: #{person1[:stadt]}"
# 	puts "2. Person: \n Name: #{person2[:nachname]} \n Vorname: #{person2[:vorname]} \n Stadt: #{person2[:stadt]}"
# puts "\n"

# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
worte = ['Pflaume', 'Bauschaum', 'Auster']
puts worte
puts "\n"
# # b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
begriff = "aus"
 worte.size.times do |i|
 if worte[i].include?("aus"); puts worte[i]
 end
end
puts "\n"
# # c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# puts worte.sort_by.length
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# lotto = [0..49]
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
