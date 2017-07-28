class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
