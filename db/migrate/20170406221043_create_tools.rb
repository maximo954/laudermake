class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :serial_number
      t.decimal :replacement_cost
      t.string :label_color
      t.references :user, foreign: true

      t.timestamps
    end
  end
end
