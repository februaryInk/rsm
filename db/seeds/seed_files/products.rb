puts 'Creating Products...'

products = [
  {
    :description => 'An engraved stone makes an enduring tribute to an individual’s accomplishments and character. Perfect for Teacher Appreciation, competitions, service awards, or any occasion where you want to tell someone that they are admired for their efforts.',
    :name => 'Awards and Honors'
  },
  {
    :description => 'Cut stone makes for an excellent indoor or outdoor display. It can be set upright like a plaque for tabletop display (may require a support), or laid flat as a stepping stone. Our cut stone is relatively uniform in thickness, being 1” to 3” in depth.',
    :name => 'Cut Stone'
  },
  {
    :description => 'Though the design you have in mind does not fit neatly into any of our specific categories, we will still be happy to make it for you. Just let us know what you want, whatever it may be. If you are looking for unusual custom work that we don’t offer through our online order forms, such as on-site engraving or an extra large rock, we can do that too - just contact us and we can work with you on the details.',
    :name => 'Engraved Stone (General)'
  },
  {
    :description => 'Set the tone in your garden (flower or otherwise) with a garden stone. These keepsakes are a great way to display a favorite quote, artwork, or words to live by.',
    :name => 'Garden Stone'
  },
  {
    :description => 'If you are looking to honor the memory of a loved one or to commemorate someone in your life, there are few methods that are as lasting as a custom engraved stone.',
    :name => 'Memorial'
  },
  {
    :description => 'Personalized engraved stones have proven to be one of our most popular offerings. Set your name in stone to add a signature touch to your home. We have created personalized stones in several different forms, including as a means to display a family name, a monogram, or individual family members’ names.',
    :name => 'Personalized Stone'
  },
  {
    :description => 'We know from experience how difficult it is to lose a beloved pet. A pet memorial commemorates the life of a cherished companion, no matter how big or small. We take great care in crafting these memorials with the hope that they will help to bring feelings of closure and peace during a time of grief and loss.',
    :name => 'Pet Memorial'
  },
  {
    :description => 'Commemorate any kind of big day, from weddings and anniversaries to graduations to birthdays, with a durable engraved keepsake stone. You can truly make it a day that will be remembered for generations to come. Given the celebratory nature, this variety of engraved rock makes an excellent gift.',
    :name => 'Special Occasion Keepsake'
  },
  {
    :description => 'Bid welcome to visitors of your home or business by displaying an engraved welcome stone. The style of the font and artwork can uniquely complement your building’s decor.',
    :name => 'Welcome Sign'
  }
]

products.each do | product |
  Product.find_or_initialize_by( :name => product[ :name ] ).tap do | o |
    o.assign_attributes( product )
    o.save
  end
end

puts 'Creating Materials...'

materials = [
  {
    :description => 'A rock that is uncut and untooled except for a small amount of grinding on the bottom that makes it stable when upright. Our natural rocks are hand-selected Michigan fieldstone and vary greatly in shape and color.',
    :name => 'Natural Rock'
  },
  {
    :description => 'A cut and tumbled stone slab that is blue-gray in color and lies flat like a stepping stone. The tumbling gives it soft edges and corners.',
    :name => 'Tumbled Bluestone'
  },
  {
    :description => 'A solid cut stone slab that can lie flat or stand upright independently, depending on its size. They are usually either light gray or tan (customers are free to specify which color they prefer).',
    :name => 'Stone Slab'
  },
  {
    :description => 'A round slice of a natural stone that lies flat. Colors vary widely, but they are typically oval-like in shape. The outer edge is not smoothed and maintains its natural form.',
    :name => 'Cut Stone Round'
  }
]

materials.each do | material |
  Material.find_or_initialize_by( :name => material[ :name ] ).tap do | o |
    o.assign_attributes( material )
    o.save
  end
end

sizes = [
  {
    :name => 'Small'
  },
  {
    :name => 'Medium'
  },
  {
    :name => 'Large'
  },
  {
    :name => 'Extra Large'
  }
]

sizes.each do | size |
  Size.find_or_initialize_by( :name => size[ :name ] ).tap do | o |
    o.assign_attributes( size )
    o.save
  end
end

material_sizes = [
  {
    :longest_dimension => '5" to 6"',
    :material_id => Material.called( 'Natural Rock' ).id,
    :price => 17.00,
    :shippable => true,
    :shipping => 12.85,
    :size_id => Size.called( 'Small' ).id,
    :stands_unassisted => 'Optional',
    :thickness => nil,
    :weight => '10 to 15 lbs.'
  },
  {
    :longest_dimension => '7" to 9"',
    :material_id => Material.called( 'Natural Rock' ).id,
    :price => 40.00,
    :shippable => true,
    :shipping => 20.00,
    :size_id => Size.called( 'Medium' ).id,
    :stands_unassisted => 'Yes',
    :thickness => nil,
    :weight => '15 to 30 lbs.'
  },
  {
    :longest_dimension => '10" to 12"',
    :material_id => Material.called( 'Natural Rock' ).id,
    :price => 85.00,
    :shippable => true,
    :shipping => 35.00,
    :size_id => Size.called( 'Large' ).id,
    :stands_unassisted => 'Yes',
    :thickness => nil,
    :weight => '35 to 55 lbs.'
  },
  {
    :longest_dimension => '13" to 15"',
    :material_id => Material.called( 'Natural Rock' ).id,
    :price => 120.00,
    :shippable => false,
    :shipping => 60.00,
    :size_id => Size.called( 'Extra Large' ).id,
    :stands_unassisted => 'Yes',
    :thickness => nil,
    :weight => '60 to 90 lbs.'
  },
  {
    :longest_dimension => '8" to 10"',
    :material_id => Material.called( 'Stone Slab' ).id,
    :price => 40.00,
    :shippable => true,
    :shipping => 15.00,
    :size_id => Size.called( 'Medium' ).id,
    :stands_unassisted => 'No',
    :thickness => '2" to 2 1/2"',
    :weight => '15 to 20 lbs.'
  },
  {
    :longest_dimension => '11" to 12"',
    :material_id => Material.called( 'Stone Slab' ).id,
    :price => 85.00,
    :shippable => true,
    :shipping => 35.00,
    :size_id => Size.called( 'Large' ).id,
    :stands_unassisted => 'Yes',
    :thickness => '2 3/4" to 4"',
    :weight => '45 to 70 lbs.'
  },
  {
    :longest_dimension => '14" to 15"',
    :material_id => Material.called( 'Stone Slab' ).id,
    :price => 120.00,
    :shippable => true,
    :shipping => 40.00,
    :size_id => Size.called( 'Extra Large' ).id,
    :stands_unassisted => 'Yes',
    :thickness => '2 3/4" to 4"',
    :weight => '60 to 90 lbs.'
  },
  {
    :longest_dimension => '8" to 10"',
    :material_id => Material.called( 'Tumbled Bluestone' ).id,
    :price => 35.00,
    :shippable => true,
    :shipping => 14.40,
    :size_id => Size.called( 'Medium' ).id,
    :stands_unassisted => 'No',
    :thickness => '1 3/4" to 2 1/2"',
    :weight => '10 to 15 lbs.'
  },
  {
    :longest_dimension => '7" to 9"',
    :material_id => Material.called( 'Cut Stone Round' ).id,
    :price => 35.00,
    :shippable => true,
    :shipping => 14.40,
    :size_id => Size.called( 'Medium' ).id,
    :stands_unassisted => 'No',
    :thickness => '1 3/4" to 2 1/2"',
    :weight => '10 to 20 lbs.'
  },
  {
    :longest_dimension => '12" to 14"',
    :material_id => Material.called( 'Cut Stone Round' ).id,
    :price => 75.00,
    :shippable => true,
    :shipping => 20.00,
    :size_id => Size.called( 'Large' ).id,
    :stands_unassisted => 'No',
    :thickness => '1 3/4" to 2 1/2"',
    :weight => '15 to 25 lbs.'
  },
  {
    :longest_dimension => '15" to 17"',
    :material_id => Material.called( 'Cut Stone Round' ).id,
    :price => 95.00,
    :shippable => true,
    :shipping => 25.00,
    :size_id => Size.called( 'Large' ).id,
    :stands_unassisted => 'No',
    :thickness => '1 3/4" to 2 1/2"',
    :weight => '20 to 30 lbs.'
  }
]

material_sizes.each do | material_size |
  MaterialSize.find_or_initialize_by( :material_id => material_size[ :material_id ], :size_id => material_size[ :size_id ] ).tap do | o |
    o.assign_attributes( material_size )
    o.save
  end
end
