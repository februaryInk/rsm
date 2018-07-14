class MaterialSize < ApplicationRecord
  belongs_to :material
  belongs_to :size

  validates :material, :size, :presence => true
  validates :size_id, :uniqueness => { :scope => :material_id }
end
