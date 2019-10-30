require "rails_helper"

feature "User completes todo" do
    scenario "successfully" do
        sign_in

        #memanggil method create_todo dengan pass param Buy milk
        create_todo "Buy milk"

        click_on "Mark complete"  

        #untuk mengecek apakah text dengan css di bawah ada di laman
        expect(page).to display_completed_todo "Buy milk"      
    end

    #refactoring code untuk membuat todo dengan param judul todo
    # def create_todo(todo_title)
    #     click_on "Add a new todo"
    #     fill_in "Title", with: todo_title
    #     click_on "Submit"
    # end

end