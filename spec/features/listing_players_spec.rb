require "rails_helper"

RSpec.describe "List Players" do
	it "displays the complete list of players" do
		player1 = Player.create(first_name: "Marc", surname: "Sangster")
		player2 = Player.create(first_name: "Emily", surname: "Lovegrove")	
	
		visit "/"

		expect(page).to have_text("Marc")
		expect(page).to have_text("Sangster")
		expect(page).to have_text("Emily")
		expect(page).to have_text("Lovegrove")

		expect(page).to have_link("New Player")
	end
end