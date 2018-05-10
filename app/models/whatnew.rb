class Whatnew < ApplicationRecord
	validates :caption, presence: true,
                    length: { minimum: 5 }
 	  mount_uploader :imagenews, ImageUploader

end
