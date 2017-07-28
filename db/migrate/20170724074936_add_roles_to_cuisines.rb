class AddRolesToCuisines < ActiveRecord::Migration
  def change
    add_column :cuisines, :roles, :integer
  end
end
