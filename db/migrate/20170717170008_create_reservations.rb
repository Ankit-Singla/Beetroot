class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_no
      t.text :requests
      t.integer :guest_count
      t.datetime :at_time

      t.timestamps null: false
    end
  end
end
