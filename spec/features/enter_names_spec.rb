require 'spec_helper'

feature "entering names" do
  scenario "enter names and see my name" do
    visit('/')
    fill_in :player_1_name, with: "Felix"
    click_button "Submit"
    expect(page).to have_content "Felix"
  end
end