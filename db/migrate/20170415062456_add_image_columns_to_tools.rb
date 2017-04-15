class AddImageColumnsToTools < ActiveRecord::Migration[5.0]
  def up
    add_attachment :tools, :image
  end

  def down
    remove_attachment :tools, :image
  end
end
