class Artwork < ApplicationRecord
  has_many :artwork_collections, :dependent => :destroy
  has_many :collections, :through => :artwork_collections
  
  has_one_attached :image
end
