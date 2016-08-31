feature 'Landing Page' do

	context 'Categories' do
		scenario 'there should be 6 total'do
			visit '/'
			expect(page).to have_link 'Women’s footwear'
			expect(page).to have_link 'Men’s footwear'
			expect(page).to have_link 'Women’s casualwear'
			expect(page).to have_link 'Men’s casualwear'
			expect(page).to have_link 'Women’s formalwear'
			expect(page).to have_link 'Men’s formalwear'
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