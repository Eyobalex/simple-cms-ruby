class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :subject_id
      t.string :name, :default => "", :null => false
      t.integer :permalink
      t.integer :position
      t.boolean :visible, :default => false, :null => false
      t.timestamps
    end
    add_index :pages, :subject_id
    #Ex:- add_index("admin_users", "username")
    add_index :pages, :permalink
    #Ex:- add_index("admin_users", "username")
  end
end
