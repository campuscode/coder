require 'rails_helper'

describe Post do
  it 'should persist a new post' do
    content = 'Este é um post do Coder'

    post = Post.create(content: content)

    expect(post).to be_persisted
    expect(post.content).to eq content
  end

  it 'should not be empty' do
    pending
    content = ''

    post = Post.create(content: content)

    expect(post).not_to be_valid
  end

  it 'should not be longer than 140 chars' do
    pending
    content = 'a' * 141

    post = Post.create(content: content)

    expect(post).not_to be_valid
  end

end
