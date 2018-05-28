class ArtworkCollection < ApplicationRecord
  belongs_to :artwork
  belongs_to :collection

  validates :artwork, :collection, :presence => true
  validates :collection_id, :uniqueness => { :scope => :artwork_id }
end
