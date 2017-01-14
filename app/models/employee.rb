class Employee < ApplicationRecord

	validates :name, :designation, presence: true
	
	has_many :orders
	belongs_to :company

	before_validation :company_must_have_a_hr

end
