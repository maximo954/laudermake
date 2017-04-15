class AddImageToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :image, :string
  end
end
