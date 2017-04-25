class CreateMonthlyReport < ActiveRecord::Migration[5.0]
  def change
    create_table :monthly_reports do |t|
      t.integer :days_carpooled
      t.integer :days_drove_alone
      t.integer :carpool_id
    end
  end
end
