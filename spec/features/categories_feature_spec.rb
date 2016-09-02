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

	xscenario 'links should display all items in that category' do
		click_link "Men's footwear"
		expect(page).to have_content 'Leather Driver Saddle Loafers, Tan'
		expect(page).to have_content 'Flip Flops, Red'
		expect(page).to have_content 'Flip Flops, Blue'
	end
end