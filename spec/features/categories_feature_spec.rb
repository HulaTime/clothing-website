feature 'Categories' do
	before do
		visit categories_path
  end

	scenario 'should display links to available categories' do
		expect(page).to have_link "Women's Footwear"
		expect(page).to have_link "Men's Footwear"
		expect(page).to have_link "Women's Casualwear"
		expect(page).to have_link "Men's Casualwear"
		expect(page).to have_link "Women's Formalwear"
		expect(page).to have_link "Men's Formalwear"
	end

	scenario 'links should redirect to the correct category' do
		click_link "Women's Footwear"
		expect(current_path).to eq '/clothing/women/footwear'
		visit categories_path
		click_link "Men's Casualwear"
		expect(current_path).to eq '/clothing/men/casualwear'
	end
end