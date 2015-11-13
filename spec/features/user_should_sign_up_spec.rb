require 'rails_helper'

feature 'User should sign up' do
  scenario 'successfully' do
    pending
    visit root_path

    click_on 'Sign Up'

    fill_in 'Email', with: 'joao@campuscode.com.br'
    fill_in 'Password', with: '123456'

    click_on 'Sign up'

    expect(page).to have_content 'Olá joao@campuscode.com.br'
  end
end
