feature 'Landing Page' do

	context 'User not signed in' do
		scenario 'Landing Page should not redirect to user homepage' do 
			visit '/'
			expect(current_path).to eq '/'
		end
	end

	context 'User signed in' do

		before do
			sign_user_up
		end

		scenario 'Landing Page should direct to user homepage' do 
			visit '/'
			expect(current_path).to eq '/home'
		end
	end

end