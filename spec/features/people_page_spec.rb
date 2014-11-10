require 'rails_helper'

feature 'People' do

  scenario 'User wants to add new user w/o info' do
    visit root_path
    click_on "People"
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content("First name can't be blank")
  end

  scenario 'User wants to add new user' do
    visit root_path
    click_on "People"
    click_on "New Person"
    fill_in "First name", with:"Mr."
    fill_in "Last name", with:"T"
    fill_in "Date of birth", with:"11/4/2014"
    click_on "Create Person"
    expect(page).to have_content("Person saved successfully")
  end
end
