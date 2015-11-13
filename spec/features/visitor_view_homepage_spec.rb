require 'rails_helper'

feature 'Visitor view the home page' do
  scenario 'and see the site name' do
    pending
    visit root_path

    expect(page).to have_content 'Coder'
  end
end
