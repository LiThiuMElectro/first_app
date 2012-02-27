class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #creer une column --> t = useres qui est le nom de ma table seter en haut, t.colum "nom de la column", :type (binary,float,boolean,date,datetime,decimal,integer,string,text,time), :option limit => size :default => value :null =>true/false :precision => number :scale => number
      t.column "first_name", :string, :limit => 25 #new style or sexy migration
      t.column "last_name", :string, :limit => 50
      t.column "email", :string , :default => "", :null => false
      t.column "password",:string, :limit => 40
      #t.column "created_at", :datetime
      #t.column "updated_at", :datetime
      t.timestamps #est la même chose que créer les deux d'en haute
      
	  #t.string "first_name" vieille façon de faire
    end
  end
  
  def down
  	drop_table :users
  end
end
