class AddCheckedOutToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :checked_out, :boolean, default: false
  end
end
