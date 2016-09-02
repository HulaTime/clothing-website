feature 'Clothing' do
	before do
		item1 = create(:clothing)
		item2 = create(:clothing, item:'Flip Flops',
															colour:'Blue',
														  category:'Men\'s Footwear',
														  price:'£19.00',
														  quantity: 0)
		item3 = create(:clothing, item:'Fine Stripe Short Sleeve Shirt',
															colour:'Green',
														  category:'Men\'s Casualwear',
														  price:'£39.99',
														  quantity: 3)
		visit '/'
		click_link 'Clothing'
	end

	scenario 'items should all be displayed on one page' do
		expect(current_path).to eq clothing_index_path
		expect(page).to have_content 'Almond Toe Court Shoes, Patent Black'
		expect(page).to have_content 'Flip Flops, Blue'
		expect(page).to have_content 'Fine Stripe Short Sleeve Shirt, Green'
	end

	scenario 'items should have a button to add to shopping cart' do
		fill_in(:quantity, with: 2, match: :first)
		click_button('Add to cart', match: :first)
		expect(Cart.count).to eq 1
	end
end