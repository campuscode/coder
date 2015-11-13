require 'rails_helper'

feature 'User sign in to create posts' do
  scenario 'successfully' do
    pending
    User.create(email: 'joao@campuscode.com.br', password: '123456789')

    visit root_path

    click_on 'Sign in'

    fill_in 'Email', with: 'joao@campuscode.com.br'
    fill_in 'Password', with: '1233456789'
    click_on 'Log in'

    fill_in 'Post', with: 'Este é um post depois de autenticar'
    click_on 'Post!'

    expect(page).to have_content 'Este é um post depois de autenticar'
    expect(page).to have_content 'Autor: joao@campuscode.com.br'
  end
end
