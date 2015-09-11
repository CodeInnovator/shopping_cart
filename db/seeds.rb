# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(title: 'Amborsia Apple',
  description: 
    %{<p>
        This apple was produced in BC CANADA. It's very juicy and delicious. Fresh product from Local!
      </p>},
  image_url:   'apple.jpg',    
  price: 0.50)
# . . .
Product.create!(title: 'Orange',
  description:
    %{<p>
        This fresh Orange is from California. It's juicy and tasteful. Unless you hate Orange, you will love it!
      </p>},
  image_url: 'orange.jpg',
  price: 0.60)
# . . .

Product.create!(title: 'Chicken Breast',
  description: 
    %{<p>
        <em>One Piece</em> This organic chicken breast is from local BC. It raised with healthy food. It also constains high
        volumn of proteins.
      </p>},
  image_url: 'rtp.jpg',
  price: 4.00)