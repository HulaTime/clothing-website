feature 'Clothing' do
	before do
		item1 = create(:clothing)
		item2 = create(:clothing, item:'Flip Flops',
															colour:'Blue',
														  category:'Men\'s Footwear',
														  price:'19.00',
														  quantity: 0)
		visit '/'
		click_link 'Clothing'
	end

	scenario 'items should all be displayed on one page' do
		expect(current_path).to eq clothing_index_path
		expect(page).to have_content 'Almond Toe Court Shoes'
		expect(page).to have_content 'Patent Black £99.00 5 in stock'
		expect(page).to have_content 'Flip Flops'
		expect(page).to have_content 'Blue £19.00 Out of stock'
	end

	scenario 'items should have a button to add to shopping cart' do
		fill_in(:quantity, with: 2, match: :first)
		click_button('Add to cart', match: :first)
		expect(Cart.count).to eq 1
	end
end