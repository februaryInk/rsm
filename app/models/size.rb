class Size < ApplicationRecord
  include CallableByName

  SIZE_ORDER = [ 'Small', 'Medium', 'Large', 'Extra Large' ]

  has_many :material_sizes, :dependent => :destroy
  has_many :materials, :through => :material_sizes
  has_many :photos

  scope :smallest_to_largest, -> {
    order_by = [ 'CASE' ]
    SIZE_ORDER.each_with_index { |size, i| order_by << "WHEN name='#{size}' THEN #{i}" }
    order_by << 'END'
    order( order_by.join( ' ' ) )
  }
end
