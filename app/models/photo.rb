class Photo < ApplicationRecord
  belongs_to :material
  belongs_to :product
end
