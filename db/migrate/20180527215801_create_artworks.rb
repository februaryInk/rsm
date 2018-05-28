class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.integer :complexity
      
      t.string :code
      t.string :description
      t.string :source

      t.timestamps
    end
  end
end
