class CreateMaterialSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :material_sizes do |t|
      t.references :material, :index => true, :foreign_key => true
      t.references :size, :index => true, :foreign_key => true

      t.string :longest_dimension
      t.string :thickness
      t.string :weight
      t.string :stands_unassisted
      t.float :price
      t.float :shipping
      t.boolean :shippable

      t.timestamps
    end
  end
end
