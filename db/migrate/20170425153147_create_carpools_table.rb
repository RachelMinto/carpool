class CreateCarpoolsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :carpools do |t|
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :parking_address 
      t.string :am_start
      t.string :am_end
      t.string :pm_start
      t.string :pm_end
      t.integer :total_seats
      t.integer :user_id                                  
      t.timestamps      
    end
  end
end
