class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    	t.references :page
      #references ajoute pour nous le _id a page alors même chose qu'écrire t.integer "page_id"
      t.string "name"
      t.integer "position"
      t.boolean "visible" , :default => false
      t.string "content_type"
      t.text "content" #t.text est plus que 255
      
      t.timestamps
    end
    add_index("sections", "page_id")
  end
  def down
  	drop_table :sections
  	end
end
