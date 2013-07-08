class AddSubDivisionIdToSurfSpots < ActiveRecord::Migration
  def change
    add_column :surf_spots, :subdivision_id, :integer
  end
end