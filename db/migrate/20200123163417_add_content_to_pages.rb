class AddContentToPages < ActiveRecord::Migration[5.0]
  def change
    add_column("pages", "content", :string, :after => "name")

  end
end
