class Page < ActiveRecord::Base
	validates_presence_of :name
	belongs_to :subject
	has_many :sections
	#has_and_belongs_to_many :admin_users
	has_and_belongs_to_many :editors, :class_name => "AdminUser"   #-- Si le nom de la class fait pas trop de sens dans le context on peu change mais faut lui dire ou trouver la vrai class
	
end
