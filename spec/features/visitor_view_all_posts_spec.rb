require 'rails_helper'

feature 'Visitor view all posts' do
  scenario 'successfully' do
    pending
    post = Post.create(content: 'Este é um post')
    another_post = Post.create(content: 'Another post')

    visit '/'

    expect(page).to have_content post.content
    expect(page).to have_content another_post.content
  end
end
