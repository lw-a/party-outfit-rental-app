class AddReferencesToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_reference :outfits, :user, index: true
  end
end
