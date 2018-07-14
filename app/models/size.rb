class Size < ApplicationRecord
  CallableByName

  has_many :material_sizes, :dependent => :destroy
  has_many :materials, :through => :material_sizes
end
