require 'rails_helper'

RSpec.describe "Destroy player profile" do 
	before do 
		@player = Player.create(first_name: 'Robert', surname: 'Caradain')
	end
	it "Destroys player profile and returns to root path" do 
		visit root_path
		click_link("Delete Profile")
		expect(current_path).to eql(root_path)
		expect(page).not_to have_text('Robert')
	end
end
