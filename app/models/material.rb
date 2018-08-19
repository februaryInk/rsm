class Material < ApplicationRecord
  include CallableByName

  has_many :material_sizes, :dependent => :destroy
  has_many :photos
  has_many :sizes, :through => :material_sizes
end
