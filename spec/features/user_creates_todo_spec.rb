require "rails_helper"

feature "User creates todo" do
    scenario "successfully" do
        sign_in
        
        #extract method dari module Features melalui rails_helper
        create_todo "Buy milk"

        #code untuk have_css di bawah di-refactor menjadi satu method display_todo dan diletakkan di todo_helper agar menjadi public
        #dan bisa digunakan oleh file lain.
        #expect(page).to have_css '.todos li', text: "Buy milk"
        
        expect(page).to display_todo "Buy milk"
    end
end