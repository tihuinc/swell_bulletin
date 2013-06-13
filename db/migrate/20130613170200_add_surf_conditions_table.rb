class AddSurfConditionsTable < ActiveRecord::Migration
  def change
    create_table :surf_conditions, :force => true do |t|
      t.integer :timestamp 
      t.integer :local_timestamp 
      t.integer :issue_timestamp
      t.integer :faded_rating 
      t.integer :solid_rating

      t.integer :min_breaking_height
      t.integer :max_breaking_height
      t.string :swell_direction
      t.string :swell_direction
      t.integer :swell_period
      t.string :swell_unit

      t.integer :wind_speed
      t.integer :wind_direction
      t.integer :wind_gusts
      t.string :wind_unit

      t.integer :pressure
      t.integer :temperature
      t.integer :weather_id
      t.string :pressure_unit
      t.string :temperature_unit
      t.timestamps
    end
  end
end