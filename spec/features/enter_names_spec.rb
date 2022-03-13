require 'spec_helper'

feature "entering names" do
  scenario "enter names and see my name" do
    visit('/')
    fill_in :player_1_name, with: "Felix"
    fill_in :player_2_name, with: "Robot"
    click_button "Submit"
    expect(page).to have_content "Felix vs. Robot"
  end
end