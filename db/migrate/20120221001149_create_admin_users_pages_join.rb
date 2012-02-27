class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  def up
  	create_table :admin_users_pages, :id => false do |t| #pas oublier de mettre id à false pour se type de table la, pas oublier de mettre toute au pluriel.
  		t.integer "admin_user_id"
  		t.integer "page_id"
  	end
  	add_index :admin_users_pages, ["admin_user_id","page_id"]	#on ajoute un index au deux column en même temps, très important quand on fait un join table
  	
  end

  def down
  	drop_table :admin_users_pages
  end
end
