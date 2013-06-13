class SurfSpots < ActiveRecord::Migration
  def change
    create_table :surf_spots, :force => true do |t|
      t.string :name
      t.integer :msw_id
      t.timestamps
    end
  end
end