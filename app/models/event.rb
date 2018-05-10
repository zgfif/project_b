class Event < ApplicationRecord
	validates :ev_title, presence: true,
                    length: { minimum: 5 }
	has_many :photos
	def name_with_initial
    	"#{ev_title}"
  	end
end
