class Menu < ApplicationRecord
	validates :name, :rate, presence: true
	validates :name, uniqueness: {scope: :vendor_id} 
	#validates :veg, inclusion: { in: [true, false] }
	
	scope :veg, -> {where(veg:true)}
	scope :non_veg, -> {where(veg:false)}
	
	belongs_to :vendor

	has_and_belongs_to_many :daily_menus

	default_scope {where(veg: true)}

end
