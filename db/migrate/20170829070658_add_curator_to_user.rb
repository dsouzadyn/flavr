class AddCuratorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :curator, :boolean
  end
end
