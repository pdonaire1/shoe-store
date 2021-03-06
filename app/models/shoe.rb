class Shoe < ApplicationRecord
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/shoes/original/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	belongs_to :brand
end
