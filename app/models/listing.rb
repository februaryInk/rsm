class Listing < ApplicationRecord
  validates :link, :presence => true
  validates :title, :presence => true

  belongs_to :material
  belongs_to :size
end
