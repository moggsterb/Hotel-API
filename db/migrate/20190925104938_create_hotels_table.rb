class CreateHotelsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :deeds do |t|
      t.string :name
      t.integer :price
      t.string :color
      t.integer :board_order
      t.timestamps
    end

    create_table :hotels do |t|
      t.string :name
      t.string :rating
      t.belongs_to :deed, null: false
      t.timestamps
    end
  end
end
