class AddSurfSpotIdToSurfConditionsTable < ActiveRecord::Migration
  def change
    add_column :surf_conditions, :surf_spot_id, :integer
    add_index :surf_conditions, :surf_spot_id
  end
end