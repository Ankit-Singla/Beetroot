class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :locality
      t.string :phone_no
      t.string :address

      t.timestamps null: false
    end
  end
end
