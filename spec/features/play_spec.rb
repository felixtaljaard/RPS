require 'spec_helper'

feature 'playing a game' do
  before do
    visit('/')
    fill_in :player_1_name, with: "Felix"
    fill_in :player_2_name, with: "Robot"
    click_button "Submit"
  end
    scenario 'see the options rock, paper and scissors' do
      expect(page).to have_content 'Rock'
      expect(page).to have_content 'Paper'
      expect(page).to have_content 'Scissors'
    end
end