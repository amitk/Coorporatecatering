class Company < ApplicationRecord
	validates :name,presence: {case_sensivity: false}
	validates :email,presence: true

	has_many :employees, dependent: :destroy
	has_and_belongs_to_many :day_menu
	
end
