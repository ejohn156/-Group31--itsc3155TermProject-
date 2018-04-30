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
    scenario "user successfully deletes an exercise"do
        visit exercises_path
        expect(page).to have_content("Exercises")
        click_link "Delete"
        click_link "Okay"
        expect(page).to have_no_conten("Name: TRX Squats")
        expect(page).to have_no_content("Description: Low knee stress squat")
    end
feature "Update Progress"
    scenario "user successfully updates progress" do
        visit progress_path
        expect(page).to have_content("Progress Update")
        fill_in "Weight", with: "260"
        fill_in "Current Goals:", with: "Stuff"
        click_link "Save Progress"
        expect(page).to have_content("Current Goal: Stuff")
        expect(page).to have_content("weight: 260")
    end
feature "Create Step"
    scenario "user successfully creates step on exercise" do
        visit exercises_path
        expect(page).to have_content("New Exercise")
        fill_in "Name", with: "TRX Squats"
        fill_in "Description", with: "Low knee stress squat"
        click_link "Create Exercise"
        expect(page).to have_content("Name: TRX Squats")
        expect(page).to have_content("Description: Low knee stress squat")
        fill_in "Reps", with: "20"
        fill_in "Weight", with: "0"
        fill_in "Notes", with: "Stuff"
        click_link "Create Step"
        expect(page).to have_content("20")
        expect(page).to have_content("0")
        expect(page).to have_content("Stuff")
    end

end
