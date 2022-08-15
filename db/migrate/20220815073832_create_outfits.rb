class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.string :color
      t.string :size
      t.integer :price
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
