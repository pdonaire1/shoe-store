class Brand < ApplicationRecord
	has_many :shoes, dependent: :destroy
end
