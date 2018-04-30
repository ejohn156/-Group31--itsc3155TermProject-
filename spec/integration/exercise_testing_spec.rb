require 'rails_helper.rb'

feature "Creating a new Exercise" do
    scenario "user successfully creates new exercise" do
        visit exercises_path
        expect(page).to have_content("New Exercise")
        fill_in "Name", with: "TRX Squats"
        fill_in "Description", with: "Low knee stress squat"
        click_link "Create Exercise"
        expect(page).to have_content("Name: TRX Squats")
        expect(page).to have_content("Description: Low knee stress squat")
    end
feature "Deleting an Exercise" 
    scnerario "user successfully deletes an exercise"do
        visit exercises_path
        expect(page).to have_content("Exercises")
        click_link "Delete"
        click_link "Okay"
        expect(page).to have_no_conten("Name: TRX Squats")
        expect(page).to have_no_content("Description: Low knee stress squat")
    end

end
