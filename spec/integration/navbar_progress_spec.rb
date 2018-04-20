require 'rails_helper.rb'

feature "Functional navigation bar" do
    scenario "user successfully navigates from home to Exercises page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User!")
        click_link "EXERCISES"
        expect(page).to have_content("Exercises")
    end
    scenario "user successfully navigates from home to New Exercises page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User!")
        click_link "NEW EXERCISE"
        expect(page).to have_content("New Exercise")
    end
    scenario "user successfully navigates from home to Progress page" do
        visit root_path
        expect(page).to have_content("Hello, Workout App User!")
        click_link "PROGRESS"
        expect(page).to have_content("Progress")
    end
    scenario "user successfully navigates from Exercises page to home" do
        visit exercises_path
        expect(page).to have_content("Exercises")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User!")
    end
    scenario "user successfully navigates from New Exercises page to home" do
        visit new_exercise_path
        expect(page).to have_content("New Exercise")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User!")
    end
    scenario "user successfully navigates from Progress page to home" do
        visit progress_index_path
        expect(page).to have_content("Progress")
        click_link "HOME"
        expect(page).to have_content("Hello, Workout App User!")
    end
    
end

feature "be able to navigate to an update progress form" do
    scenario "be able to navigate to an update progress form from the progress page" do
    visit progress_index_path
    expect(page).to have_content("Progress")
    click_link "Update Progress"
    expect(page).to have_content("New Progress Update")
end
end