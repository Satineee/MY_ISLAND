class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :island, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :total_price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
