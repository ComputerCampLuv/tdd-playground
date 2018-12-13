require 'rails_helper'

RSpec.describe "page to creat a new player"  do
	it "displays the correct fields to create a new player" do

		visit root_path

		click_link("New Player")

		expect(page).to have_field("First name")
		expect(page).to have_field('Surname')

	end

	
end