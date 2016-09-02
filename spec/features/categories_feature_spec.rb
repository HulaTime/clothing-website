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
end