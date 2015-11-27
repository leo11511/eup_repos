class Event < ActiveRecord::Base
	
	validates :name, presence: true
	
	def free?
		self.price.blank? || self.price.zero? #self bedeutet es wendet es auf die aktuelle Methode an ohne self geht es auch.
	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
