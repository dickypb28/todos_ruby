require "rails_helper"
feature "User sees own todos" do
    scenario "doesn't see others' todos" do
        Todo.create!(title: "Buy milk", email: "someone_else@example.com")

        sign_in_as "someone@example.com"

        #code untuk have_css di bawah di-refactor menjadi satu method display_todo dan diletakkan di todo_helper agar menjadi public
        #dan bisa digunakan oleh file lain.
        #expect(page).not_to have_css ".todos li", text: "Buy milk"
        expect(page).not_to display_todo "Buy milk"
    end
end