require 'spec_helper'

feature 'playing a game' do
  before do
    visit('/')
    fill_in :player_1_name, with: "Felix"
    click_button "Submit"
  end
    scenario 'see the options rock, paper and scissors' do
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end

    scenario 'choose a shape to play' do
      click_button 'Rock'
      expect(page).to have_content "You chose Rock!"
    end
end