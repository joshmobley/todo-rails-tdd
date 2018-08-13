require "rails_helper"

feature "User completes todo" do
    scenario "successfully" do
        sign_in

        click_on "Add a New Todo"
        fill_in "Title", with: "Buy Milk"
        click_on "Submit"
        click_on "Mark complete"

        expect(page).to have_css ".todos li.completed", text: "Buy Milk"
    end
end
