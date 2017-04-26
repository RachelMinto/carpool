class AddDefaultInfoSent < ActiveRecord::Migration[5.0]
  def change
    change_column :info_requests, :info_sent, :boolean, default: false 
  end
end
