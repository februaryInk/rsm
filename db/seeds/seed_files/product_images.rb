puts 'Creating Photos for products...'

photos = [
  {
    :file_code => '2017-04-18_1',
    :alt_text => 'Pet memorial for Oscar the dog.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Pet Memorial' ).id
  },
  {
    :file_code => '2017-04-19_1',
    :alt_text => 'Map of Michigan stepping stone.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Engraved Stone (General)' ).id
  },
  {
    :file_code => '2017-04-22_1',
    :alt_text => 'Engraved K monogram.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-04-26_1',
    :alt_text => 'Gift for a special teacher.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Engraved Stone (General)' ).id
  },
  {
    :file_code => '2017-04-26_2',
    :alt_text => 'Gift for a special teacher.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Engraved Stone (General)' ).id
  },
  {
    :file_code => '2017-04-28_1',
    :alt_text => 'The Carlsons family sign.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-05-01_1',
    :alt_text => 'Gift for a special teacher.',
    :material_id => Material.called( 'Cut Bluestone' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-05-04_1',
    :alt_text => 'Inspirational saying.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Garden Stone' ).id
  },
  {
    :file_code => '2017-05-04_2',
    :alt_text => 'Name stone for Elsie.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-05-04_3',
    :alt_text => 'Name stone for Eva.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-05-05_1',
    :alt_text => 'In memory of Helen.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Memorial' ).id
  },
  {
    :file_code => '2017-05-05_2',
    :alt_text => 'The Greenias family sign.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-05-16_1',
    :alt_text => 'The Love-Led Farm business plaque.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  },
  {
    :file_code => '2017-06-05_1',
    :alt_text => 'In memory of Wayne.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Memorial' ).id
  },
  {
    :file_code => '2017-06-08_1',
    :alt_text => 'In memory of a lost baby.',
    :material_id => Material.called( 'Cut Bluestone' ).id,
    :product_id => Product.called( 'Memorial' ).id
  },
  {
    :file_code => '2017-06-08_2',
    :alt_text => 'Memorial for Robin the dog.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Pet Memorial' ).id
  },
  {
    :file_code => '2017-06-25_1',
    :alt_text => 'Joy, Hope, and Peace.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Garden Stone' ).id
  },
  {
    :file_code => '2017-06-25_2',
    :alt_text => 'Hope.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Garden Stone' ).id
  },
  {
    :file_code => '2017-06-25_3',
    :alt_text => 'Joy.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Garden Stone' ).id
  },
  {
    :file_code => '2017-06-25_4',
    :alt_text => 'Peace.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Garden Stone' ).id
  },
  {
    :file_code => '2017-07-23_1',
    :alt_text => 'In memory of a father.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Memorial' ).id
  },
  {
    :file_code => '2017-09-07_1',
    :alt_text => 'Memorial for Lucy the dog.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Pet Memorial' ).id
  },
  {
    :file_code => '2017-09-26_1',
    :alt_text => 'The Kerestes family sign.',
    :material_id => Material.called( 'Natural Rock' ).id,
    :product_id => Product.called( 'Personalized Stone' ).id
  }
]

photos.each do | photo |
  filename = "#{photo[ :file_code ]}.jpg"
  file_path = Rails.root.join( 'db', 'seeds', 'product_images', filename )

  Photo.find_or_initialize_by( :file_code => photo[ :file_code ] ).tap do | o |
    o.assign_attributes( photo )
    o.image.attach( io: File.open( file_path ), filename: filename )
    o.save
  end
end
