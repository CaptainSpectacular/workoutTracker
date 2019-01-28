require 'rails_helper'

feature 'navbar' do
  background { visit root_path }

  describe 'font-awesome' do
    scenario 'glyphs are being used' do
      expect(page).to have_css('.fas')
      expect(page).to have_css('.fa-search')
      expect(page).to have_css('.fa-bars')
      expect(page).to have_css('.fa-4x')
      expect(page).to have_css('.fa-2x')
    end
  end

  scenario 'it exists' do
    expect(page).to have_css('.navbar-dropdown') 
    expect(page).to have_css('.navbar') 
    expect(page).to have_css('.navbar-search')
    expect(page).to have_css('.dropdown-icon')
    expect(page).to have_css('.navbar-search')
    expect(page).to have_css('.search-field')
  end

  describe 'drop down' do
    describe 'links' do
      it 'has links for My Profile, Progress, Sessions, and Home' do
        within('.navbar-links') do
          expect(page).to have_link('Home')
          expect(page).to have_link('My Profile')
          expect(page).to have_link('Progress')
          expect(page).to have_link('Sessions')
        end
      end
    end
  end
end
