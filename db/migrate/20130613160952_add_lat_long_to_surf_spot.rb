class AddLatLongToSurfSpot < ActiveRecord::Migration
  def change
    add_column :surf_spots, :latitude, :float
    add_column :surf_spots, :longitude, :float
    add_column :surf_spots, :country_id, :integer
    add_column :surf_spots, :global_region_id, :integer
    add_column :surf_spots, :division_id, :integer
    add_column :surf_spots, :county_id, :integer
    add_index :surf_spots, :country_id
    add_index :surf_spots, :global_region_id
    add_index :surf_spots, :division_id
    add_index :surf_spots, :county_id
  end
end