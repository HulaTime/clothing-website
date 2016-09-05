FactoryGirl.define do
	factory :clothing do
		item 'Almond Toe Court Shoes'
		colour 'Patent Black'
		category 'Women\'s Foorwear'
		price '99.00'
		quantity 5
	end
end

  # before do
  #   Clothing.create(item: 'Almond Toe Court Shoes',
  #   								colour: 'Patent Black',
  #   								price: '£99.00',
  #   								quantity: '5')
  #   Clothing.create(item: 'Suede Shoes',
  #   								colour: 'Blue',
  #   								price: '£42.00',
  #   								quantity: '4')
  #   Clothing.create(item: 'Leather Driver Saddle Loafers',
  #   								colour: 'Tan',
  #   								price: '£34.00',
  #   								quantity: '12')
  #   Clothing.create(item: 'Flip Flops',
  #   								colour: 'Red',
  #   								price: '£19.00',
  #   								quantity: '6')
  #   Clothing.create(item: 'Flip Flops',
  #   								colour: 'Blue',
  #   								price: '£19.00',
  #   								quantity: '0')
  #   Clothing.create(item: 'Gold Button Cardigan',
  #   								colour: 'Black',
  #   								price: '£167.00',
  #   								quantity: '6')
  #   Clothing.create(item: 'Cotton Shorts, Medium Red',
  #   								price: '£30.00',
  #   								quantity: '5')
  #   Clothing.create(item: 'Fine Stripe Short Sleeve Shirt, Grey',
  #   								price: '£49.99',
  #   								quantity: '9')
  #   Clothing.create(item: 'Fine Stripe Short Sleeve Shirt, Green',
  #   								price: '£39.99',
  #   								quantity: '3')
  #   Clothing.create(item: 'Sharkskin Waistcoat, Charcoal',
  #   								price: '£75.00',
  #   								quantity: '2')
  #   Clothing.create(item: 'Lightweight Patch Pocket Blazer, Deer',
  #   								price: '£175.50',
  #   								quantity: '1')
  #   Clothing.create(item: 'Bird Print Dress, Black',
  #   								price: '£270.00',
  #   								quantity: '10')
  #   Clothing.create(item: 'Mid Twist Cut-Out Dress, Pink',
  #   								price: '£540.00',
  #   								quantity: '5')
  # end