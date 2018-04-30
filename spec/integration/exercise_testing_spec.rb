require 'rails_helper.rb'


feature "Creating a new Exercise" do
    scenario "user successfully creates new exercise" do
        visit new_exercise_path
        expect(page).to have_content("New Exercise")
        fill_in "Name", with: "TRX Squats"
        fill_in "Description", with: "Low knee stress squat"
        click_button "Create Exercise"
        expect(page).to have_content("Name: TRX Squats")
        expect(page).to have_content("Description: Low knee stress squat")
    end
end
feature "Functional navigation bar" do
    scenario "user successfully navigates from home to Exercises page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User")
        click_link "EXERCISES"
        expect(page).to have_content("Exercises")
    end
    scenario "user successfully navigates from home to New Exercises page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User")
        click_link "NEW EXERCISE"
        expect(page).to have_content("New Exercise")
    end
    scenario "user successfully navigates from home to Progress page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User")
        click_link "PROGRESS"
        expect(page).to have_content("Progress")
    end
    scenario "user successfully navigates from Exercises page to home" do
        visit exercises_path
        expect(page).to have_content("Exercises")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User")
    end
    scenario "user successfully navigates from New Exercises page to home" do
        visit new_exercise_path
        expect(page).to have_content("New Exercise")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User")
    end
    scenario "user successfully navigates from Progress page to home" do
        visit progress_index_path
        expect(page).to have_content("Progress")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User")
    end
    
end
feature "Update Progress" do
    scenario "user successfully updates progress" do
        visit new_progress_path
        expect(page).to have_content("Progress Update")
        fill_in "Weight", with: "260"
        fill_in "Goal", with: "Stuff"
        click_button "Save Progress"
        expect(page).to have_content("Current Goal: Stuff")
        expect(page).to have_content("weight: 260")
    end
end
feature "Create Step" do 
    scenario "user successfully creates step on exercise" do
        visit new_exercise_path
        expect(page).to have_content("New Exercise")
        fill_in "Name", with: "TRX Squats"
        fill_in "Description", with: "Low knee stress squat"
        click_button "Create Exercise"
        expect(page).to have_content("Name: TRX Squats")
        expect(page).to have_content("Description: Low knee stress squat")
        fill_in "Reps", with: "20"
        fill_in "Weight", with: "0"
        fill_in "Notes", with: "Stuff"
        click_button "Create Step"
        expect(page).to have_content("20")
        expect(page).to have_content("0")
        expect(page).to have_content("Stuff")
    end
end
