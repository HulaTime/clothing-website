feature 'Categories' do
	before do
		visit categories_path
  end

	scenario 'should display links to available categories' do
		expect(page).to have_link "Women's footwear"
		expect(page).to have_link "Men's footwear"
		expect(page).to have_link "Women's casualwear"
		expect(page).to have_link "Men's casualwear"
		expect(page).to have_link "Women's formalwear"
		expect(page).to have_link "Men's formalwear"
	end

	xscenario 'links should display all items in that category' do
		click_link "Men's footwear"
		expect(page).to have_content 'Leather Driver Saddle Loafers, Tan'
		expect(page).to have_content 'Flip Flops, Red'
		expect(page).to have_content 'Flip Flops, Blue'
	end
end