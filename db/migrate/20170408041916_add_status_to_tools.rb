class AddStatusToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :status, :boolean, default: false
  end
end