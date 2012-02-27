class Subject < ActiveRecord::Base
	
	#has_one :page 
	has_many :pages
	
	validates_presence_of :name
	scope :visible, where(:visible => true) #on scope la command where(:visible => true) dans le nom visible alors dans la console ou peu caller subjects = Subject.visible pis sa return comme si on avais caller subjects = Subject.where(:visible => true)
	scope :invisible, where(:visible => false)
	#si on veut passer un variable
	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}  
	
end
