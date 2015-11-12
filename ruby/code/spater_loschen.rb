liste = %w(Hallo Tschüüs Willkommen)
var = liste.select do |c|
 c.downcase.include?("mm") 
end
puts var