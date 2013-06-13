class AddIndexToMswIdInSurfSpots < ActiveRecord::Migration
  def change
    add_index :surf_spots, :msw_id
  end
end