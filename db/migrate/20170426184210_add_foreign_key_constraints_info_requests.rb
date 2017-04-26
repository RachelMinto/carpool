class AddForeignKeyConstraintsInfoRequests < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :info_requests, :users
    add_foreign_key :info_requests, :carpools
  end
end
