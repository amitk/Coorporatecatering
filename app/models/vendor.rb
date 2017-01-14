class Vendor < ApplicationRecord
	validates :name, :location, presence: {case_sensitive: false}

	has_many :menus, dependent: :destroy
end
