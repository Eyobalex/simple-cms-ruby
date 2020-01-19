class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name, :default => "", :null => false
      t.integer :page_id
      t.integer :position
      t.boolean :visible, :default => false, :null => false
      t.string :content_type 
      t.text :content
      t.timestamps
    end
    add_index :sections, :page_id
    #Ex:- add_index("admin_users", "username")
  end
end
