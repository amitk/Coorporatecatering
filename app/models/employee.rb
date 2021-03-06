class Employee < ApplicationRecord

	validates :name, :designation, presence: true
	validates :phone, length: { is: 10 }, format: { with: /\d{10}/, message: "invalid phone no"}

=begin	
	after_initialize do |employees|
		puts "after initialization"
	end

	before_validation do |employees|
		puts "before validation"
	end
	after_validation :company_must_have_a_hr

	before_destroy :cannot_delete_last_hr

	def company_must_have_a_hr
		if Employee.where(company_id: self.company_id, designation: "Hr").count == 0 && self.designation != "Hr"
			throw :abort
		end
	end

	def cannot_delete_last_hr
		if self.designation == "Hr" && Employee.where(company_id: self.company_id, designation: "Hr").count == 1
			throw :abort
		end
	end
	

	before_save do |employees|
		puts "before save"
	end

	before_create do |employees|
		puts "before create"
	end

	around_create do |employees|
		puts "around create"
	end

	after_create do |employees|
		puts "after create"
	end

	after_save do |employees|
		puts "after save"
	end

	after_commit do |employees|
		puts "after commit"
	end

	after_rollback do |employees|
		puts "after rollback"
	end
	after_find do |employees|
		puts "after find"
	end

=end

	has_many :orders
	belongs_to :company


end
