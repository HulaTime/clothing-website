feature 'Landing Page' do

	context 'User not signed in' do
		scenario 'Landing Page should direct to homepage' do 
			visit '/'
			expect(current_path).to eq '/home'
		end
	end

end