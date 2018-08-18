class Photo < ApplicationRecord
  belongs_to :material
  belongs_to :product
  belongs_to :size

  has_one_attached :image
end
