class Employee < ApplicationRecord

	validates :name, :designation, presence: true
	validates :phone, length: { is: 10 }, format: { with: /\d{10}/}
	
	has_many :orders
	belongs_to :company

	before_validation :company_must_have_a_hr

end
