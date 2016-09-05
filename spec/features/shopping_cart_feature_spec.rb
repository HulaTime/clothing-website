feature 'Shopping Cart' do
	before do
		item1 = create(:clothing)
		visit clothing_index_path
	end
	scenario 'button should be displayed on all pages' do
		expect(page).to have_link 'View Shopping Cart'
	end

	scenario 'should display all items added with order cost' do
		fill_in(:quantity, with: 2)
		click_button 'Add to cart'
		click_link 'View Shopping Cart'
		expect(current_path).to eq cart_index_path
		expect(page).to have_content 'Almond Toe Court Shoes'
		expect(page).to have_content 'Patent Black'
		expect(page).to have_content '£99.00'
		expect(page).to have_content '2'
		expect(page).to have_content 'Total: £198.00'
	end
end