class CreateHotelsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :color
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
