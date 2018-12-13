require 'rails_helper'

RSpec.describe "Show player profile" do 
	before do 
		@player = Player.create(first_name: 'Marc', surname: 'Sangster')
	end

	it "checks that profile page is navigated to and display correct information" do 
		visit root_path
		click_link("Show Profile")
		expect(current_path).to eql(player_path(@player.id))
		expect(page).to have_text(@player.first_name)
		expect(page).to have_text(@player.surname)
	end
end