class CreateDivisionsTable < ActiveRecord::Migration
  def change
    create_table :divisions, :force => true do |t|
      t.string :name
      t.timestamps
    end
  end
end