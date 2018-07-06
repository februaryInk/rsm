class Material < ApplicationRecord
  include CallableByName
  
  has_many :photos
end
