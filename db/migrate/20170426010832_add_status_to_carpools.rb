class AddStatusToCarpools < ActiveRecord::Migration[5.0]
  def change
    add_column :carpools, :status, :integer, default: 0, index: true    
  end
end
