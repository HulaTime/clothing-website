feature 'Categories' do
	before do
		visit categories_path
  end

	scenario 'should display links to available categories' do
		expect(page).to have_link "Footwear"
		expect(page).to have_link "Casualwear"
		expect(page).to have_link "Formalwear"
	end

	scenario 'links should redirect to the correct category' do
		click_link "Footwear"
		expect(current_path).to eq '/clothing/footwear'
		visit categories_path
		click_link "Casualwear"
		expect(current_path).to eq '/clothing/casualwear'
		visit categories_path
		click_link "Formalwear"
		expect(current_path).to eq '/clothing/formalwear'
	end
end