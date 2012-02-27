class SectionEdit < ActiveRecord::Base
	
	#belongs_to :admin_user la façon de faire si on veu utiliser le nom du model encore mais on va utiliser un nom meilleur
	belongs_to :editor, :class_name => "AdminUser", :foreign_key => 'admin_user_id'
	belongs_to :section
end
