class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.reference :activity, index: true
      t.reference :activity_variant, index: true
      t.decimal :quantity
      t.string :unit
      t.text :comment

      t.timestamps
    end
  end
end
