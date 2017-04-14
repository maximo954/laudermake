class RemovePoFromRentals < ActiveRecord::Migration[5.0]
  def change
    remove_column :rentals, :po, :integer
  end
end
