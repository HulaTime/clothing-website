feature 'Landing Page' do

	context 'Categories' do
		before do
			visit '/'
		end

		scenario 'there should be a link to a page displaying all categories' do
			click_link 'Categories'
			expect(current_path).to eq '/categories'
		end
		
		scenario 'there should be 6 for male and female clothing'do
			expect(page).to have_link "Women's Footwear"
			expect(page).to have_link "Men's Footwear"
			expect(page).to have_link "Women's Casualwear"
			expect(page).to have_link "Men's Casualwear"
			expect(page).to have_link "Women's Formalwear"
			expect(page).to have_link "Men's Formalwear"
		end
	end

	context 'when user is not signed in' do
		scenario 'should not redirect to user homepage' do 
			visit '/'
			expect(current_path).to eq '/'
		end
	end

	context 'when user is signed in' do
		before do
			sign_user_up
		end

		scenario 'should direct to user homepage' do 
			expect(current_path).to eq '/home'
		end
	end

end