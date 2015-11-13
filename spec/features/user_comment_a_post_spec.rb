require 'rails_helper'

feature 'User comment a post' do
  scenario 'successfully' do
    pending
    post = Post.create(content: 'Este é um post')

    visit root_path

    click_on 'Comentar'

    fill_in 'Comentário', with: 'Que post bacana!'

    expect(page).to have_content post.content
    expect(page).to have_content 'Que post bacana!'
  end
end
