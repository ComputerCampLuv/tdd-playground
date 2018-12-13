require 'rails_helper'

RSpec.describe "Edit player page" do 
	before do 
		@player = Player.create(first_name: 'Emily', surname: 'Lovegrove')
	end

	it "Show a form with the players details prepopulated" do 

		visit root_path

		click_link('Edit Profile')

		expect(current_path).to eql(player_edit_path(@player.id))

		expect(find_field('First name').value).to eql(@player.first_name)
		expect(find_field('Surname').value).to eql(@player.surname)
	end
end