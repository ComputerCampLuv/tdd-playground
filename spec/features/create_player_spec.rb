require 'rails_helper'

RSpec.describe "create a new player" do 
	before do
		visit players_new_path
	end
	it "creates a new player if the validation passes" do 
		fill_in 'First name', with: 'Marc'
		fill_in 'Surname', with: 'Sangster'
		click_button 'Create Player'
		expect(current_path).to eql(root_path)
	end
	it "does not create a new player if validation fails" do 
		click_button 'Create Player'
		expect(current_path).to eql(players_new_path)
		expect(page).to have_text("First name can't be blank")
		expect(page).to have_text("Surname can't be blank")

	end
	
end