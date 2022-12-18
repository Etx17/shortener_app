require 'rails_helper'

RSpec.describe Link, type: :model do

  it 'belongs to a user' do
    user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
    link = Link.create(destination_url: 'https://www.google.com', title: '', user: user)
    expect(link.user).to eq(user)
    expect(link.user).to be_a(User)
  end

  it 'has a valid destination url format' do
    user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
    link = Link.create(destination_url: 'argrre3=:', title: '', user: user)
    expect(link).to_not be_valid

    other_link = Link.create(destination_url: 'https://www.google.com', title: '', user: user)
    expect(other_link).to be_valid
  end
end
