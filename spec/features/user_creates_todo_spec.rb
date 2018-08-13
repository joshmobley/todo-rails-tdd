require "rails_helper"

feature "User creates todo" do
    scenario "successfully" do
        sign_in
        create_todo("Buy Milk")
        expect(page).to display_todo("Buy Milk")
    end
end
