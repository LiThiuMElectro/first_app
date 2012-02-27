class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer "subject_id"
      # can also use: t.references :suject
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible" , :default => false
      t.timestamps
      end
      # toujours ajouter des index sur les foreign keys parceque sa speed up le find
      add_index("pages","subject_id")
      # vu qu'on utilise le perma link pour trouver la page faut que sa sois quick
      add_index("pages", "permalink")
  end
  def down
  	drop_table :pages
  	end
end
