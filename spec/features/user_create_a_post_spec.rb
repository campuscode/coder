require 'rails_helper'

feature 'User create a post' do
  scenario 'sucessfully' do
    visit '/'

    fill_in 'Post', with: 'Este é meu primeiro post no Coder'
    click_on 'Post!'

    expect(page).to have_content 'Este é meu primeiro post no Coder'
  end
end
