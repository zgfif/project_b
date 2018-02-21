class Event < ApplicationRecord
	has_many :photos
	def name_with_initial
    	"#{ev_title}"
  	end
end
