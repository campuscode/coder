require 'rails_helper'

feature 'Visitor view user profile' do
  scenario 'successfully' do
    pending
    user = User.create(email: 'joao@campuscode.com.br', password: '123456789')
    Post.create(content: 'Este é o post do Joao', user: user)
    another_user = User.create(email: 'alan@campuscode.com.br', password: '123456789')
    Post.create(content: 'Este é o post do Alan', user: another_user)

    visit user_path(user)

    expect(page).to have_content 'Perfil de joao@campuscode.com.br'
    expect(page).to have_content 'Este é o post do Joao'
    expect(page).not_to have_content 'Este é o post do Alan'
  end
end
