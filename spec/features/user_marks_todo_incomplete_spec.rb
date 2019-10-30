require "rails_helper"

feature "User marks todo incomplete" do
    scenario "successfully" do
        sign_in

        #memanggil method create_todo dengan pass param Buy milk
        create_todo "Buy milk"

        click_on "Mark complete"  
        click_on "Mark incomplete"  

        #untuk mengecek apakah text dengan css di bawah ada di laman
        expect(page).not_to display_completed_todo "Buy milk"      
        expect(page).to display_todo "Buy milk"
    end
end