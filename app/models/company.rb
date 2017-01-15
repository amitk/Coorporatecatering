class Company < ApplicationRecord
	validates :name, presence: {case_sensivity: false}
	validates :email, presence: true, format: {with: /[a-zA-z]\w*@\w*\.[a-z]*/, message: "Invalid email"} 

	has_many :employees, dependent: :destroy
	has_and_belongs_to_many :day_menu
	
end
