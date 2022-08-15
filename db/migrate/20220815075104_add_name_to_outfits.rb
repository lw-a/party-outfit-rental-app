class AddNameToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :name, :string
    add_column :outfits, :location, :string

    rename_column :outfits, :type, :category
  end
end
