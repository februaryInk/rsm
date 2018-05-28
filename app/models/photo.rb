class Photo < ApplicationRecord
  belongs_to :material
  belongs_to :product
  
  has_one_attached :image
end
