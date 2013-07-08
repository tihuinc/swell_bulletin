class CreateGlobalRegions < ActiveRecord::Migration
  def change
    create_table :global_regions, :force => true do |t|
      t.string :name
      t.timestamps
    end
  end
end