class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :city, :string
    add_column :users, :admin, :boolean
    add_column :users, :cash, :integer
  end
end
