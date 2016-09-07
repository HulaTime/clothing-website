feature 'Shopping Cart' do
	before do
		sign_user_up
		item1 = create(:clothing)
		visit clothing_index_path
		fill_in(:quantity, with: 2)
		click_button 'Add to cart'
	end
	scenario 'button should be displayed on all pages' do
		expect(page).to have_link 'Shopping Cart'
	end

	scenario 'should display all items added with order cost' do
		click_link 'Shopping Cart'
		expect(current_path).to eq cart_index_path
		expect(page).to have_content 'Almond Toe Court Shoes'
		expect(page).to have_content 'Patent Black'
		expect(page).to have_content '£99.00'
		expect(page).to have_content '2'
		expect(page).to have_content 'Total: £198.00'
	end

	scenario 'can remove items 1 at a time via a link/button' do
		click_link 'Shopping Cart'
		click_link 'Remove Item'
		expect(current_path).to eq cart_index_path
		expect(page).not_to have_content '2'
		expect(page).to have_content '1'
	end
end