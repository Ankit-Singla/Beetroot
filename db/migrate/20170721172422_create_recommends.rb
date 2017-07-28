class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.integer :recommended_by
      t.references :restaurant, index: true, foreign_key: true
      t.integer :recommended_to

      t.timestamps null: false
    end
  end
end
