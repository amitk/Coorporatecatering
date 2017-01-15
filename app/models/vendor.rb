class Vendor < ApplicationRecord
	validates :name, :location, presence: {case_sensitive: false}
	validates :phone, length: {is: 10}, format: { with: /\d{10}/}

	has_many :menus, dependent: :destroy
end
