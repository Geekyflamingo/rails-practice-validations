require 'rails_helper'

feature 'Organizations' do

  scenario 'User creates new organization w/o name' do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'User creates new organization w/ name' do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    fill_in "Name", with:"Lunchtime Inc."
    click_on "Create Organization"
    expect(page).to have_content("Organization saved successfully")
  end

end
