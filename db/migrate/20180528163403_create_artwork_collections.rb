class CreateArtworkCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_collections do |t|
      t.references :artwork, :foreign_key => true, :index => true
      t.references :collection, :foreign_key => true, :index => true

      t.timestamps
    end
  end
end
