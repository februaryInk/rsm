class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :material, :foreign_key => true, :index => true
      t.references :product, :foreign_key => true, :index => true
      t.references :size, :foreign_key => true, :index => true

      t.string :file_code
      t.text :alt_text
      t.boolean :showcase, :default => false

      t.timestamps
    end
  end
end
