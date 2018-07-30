class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :material, :foreign_key => true, :index => true
      t.references :size, :foreign_key => true, :index => true

      t.string :title
      t.string :link
      t.boolean :inactive, :default => false

      t.timestamps
    end
  end
end
