class CreateActivityVariants < ActiveRecord::Migration
  def change
    create_table :activity_variants do |t|
      t.string :name
      t.references :activity, index: true

      t.timestamps
    end
  end
end
