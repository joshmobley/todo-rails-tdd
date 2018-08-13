require "rails_helper"

feature "User marks todo incomplete" do
    scenario "successfully" do
        sign_in
        create_todo("Buy Milk")
        click_on "Mark complete"
        click_on "Mark incomplete"
        expect(page).to display_todo("Buy Milk")
    end
end
