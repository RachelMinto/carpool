class CreateRequestInfo < ActiveRecord::Migration[5.0]
  def change
    create_table :info_requests do |t|
      t.integer :user_id
      t.integer :carpool_id
      t.boolean :info_sent
      t.timestamps
    end
  end
end
