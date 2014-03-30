class CreateConversions < ActiveRecord::Migration
  def change
    create_table :conversions do |t|

      t.string :name
      t.decimal :co2
      t.string :unit


      t.timestamps
    end
  end
end
