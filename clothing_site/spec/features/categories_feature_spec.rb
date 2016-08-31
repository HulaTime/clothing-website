feature 'Categories' do
	scenario 'should display links to available categories' do
		visit categories_path
		expect(page).to have_link 'Women’s footwear'
		expect(page).to have_link 'Men’s footwear'
		expect(page).to have_link 'Women’s casualwear'
		expect(page).to have_link 'Men’s casualwear'
		expect(page).to have_link 'Women’s formalwear'
		expect(page).to have_link 'Men’s formalwear'
	end
end