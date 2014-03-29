class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.references :activity, index: true
      t.references :activity_variant, index: true

      t.decimal :quantity
      t.string :unit
      t.text :comment

      t.timestamps
    end
  end
end
