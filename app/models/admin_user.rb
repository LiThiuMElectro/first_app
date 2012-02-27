class AdminUser < ActiveRecord::Base
	#en ce moment on a un model qui s'appelle User mais puiqu'on à renommer notre table admin_users rails va checker pour trouver quelque chose qui s'appelle user et trouvera pas alors faut utiliser une command pour lui dire.
	#deux solutions première	set_table_name("admin_users")
	#deuxième changer le classe name pis le file name de user à admin_users
	
	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits #a beaucoup de sections si tu va au traver de section_edits pour les trouvers
	scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
	
	
end
