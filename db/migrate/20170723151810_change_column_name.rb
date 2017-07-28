class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :ratings, :value, :num_stars
  end
end
