class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, :limit => 50
      t.string :last_name, :limit => 50
      t.string :email, :limit => 20
      t.string :password, :limit => 32, :default => '', :null => false
      t.timestamps
    end
  end
end
