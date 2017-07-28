class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.references :cuisine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
