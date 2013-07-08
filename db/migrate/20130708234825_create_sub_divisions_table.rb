class CreateSubDivisionsTable < ActiveRecord::Migration
  def change
    create_table :subdivisions, :force => true do |t|
      t.string :name
      t.timestamps
    end
  end
end