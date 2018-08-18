class Size < ApplicationRecord
  include CallableByName

  has_many :material_sizes, :dependent => :destroy
  has_many :materials, :through => :material_sizes
  has_many :photos
end
