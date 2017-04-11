class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.integer :po
      t.references :user, foreign: true, default: nil
      t.references :tool, foreign: true, default: nil

      t.timestamps
    end
  end
end
