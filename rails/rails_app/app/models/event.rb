class Event < ActiveRecord::Base
	def free?
		self.price.blank? || self.price.zero? #self bedeutet es wendet es auf die aktuelle Methode an ohne self geht es auch.
	end
end
