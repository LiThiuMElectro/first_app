class Section < ActiveRecord::Base
	
	belongs_to :page
	validates_presence_of :name
	has_many :section_edits
	has_many :editors, :through => :section_edits, :class_name => "AdminUser"
end
