require 'rails_helper'

feature 'Visitor view user profile' do
  scenario 'successfully' do
    pending
    user = User.create(email: 'joao@campuscode.com.br', password: '123456')
    Post.create(content: 'Este é o post do Joao', user: user)

    visit user_path(user)

    expect(page).to have_content 'Perfil de joao@campuscode.com.br'
    expect(page).to have_content 'Este é o post do Joao'
  end
end
