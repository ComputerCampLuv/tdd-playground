require 'rails_helper'

RSpec.describe "Update player profile" do
	before do 
		@player = Player.create(first_name: "Phil", surname: "Mannagh")
	end	 
		it "updates the player profile and returns to the root page" do

		visit root_path
		click_link("Edit Profile")

		expect(page).to have_text(@player.first_name)

		fill_in 'First name', with: 'Leon'

		click_button("Update Player")

		expect(current_path).to eql(root_path)
		expect(page).to have_text("Leon")
		expect(page).not_to have_text("Phil")
	end
end

