require "rails_helper"

feature "user sees own todos" do
    scenario "doesn't see others todos" do
        Todo.create(title: "Buy Milk", email: "someoneelse@example.com")

        sign_in_as "someone@example.com"
        expect(page).not_to have_css ".todos li", text: "Buy Milk"
    end
end