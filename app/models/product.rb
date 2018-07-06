class Product < ApplicationRecord
  include CallableByName
  
  has_many :photos
end
