class AddCo2ToActivityVariants < ActiveRecord::Migration
  def change
    add_column :activity_variants, :co2, :decimal
  end
end
