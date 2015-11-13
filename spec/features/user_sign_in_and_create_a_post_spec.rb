require 'rails_helper'

feature 'User sign in to create posts' do
  scenario 'successfully' do
    pending
    visit root_path

    click_on 'Sign in'

    fill_in 'Email', with: 'joao@campuscode.com.br'
    fill_in 'Password', with: '1233456'
    click_on 'Log in'

    fill_in 'Post', with: 'Este é um post depois de autenticar'
    click_on 'Post!'

    expect(page).to have_content 'Este é um post depois de autenticar'
  end
end
