require 'rails_helper'

RSpec.describe Link, type: :model do
  # J'aurais pu utiliser une gem pour faire des factories mais j'ai voulu aller droit au but sachant que le modele est petit et le temps limité
  it 'belongs to a user' do
    user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
    link = Link.create(destination_url: 'https://www.google.com', title: '', user: user)
    expect(link.user).to eq(user)
    expect(link.user).to be_a(User)
  end

  it 'has a valid destination url format' do
    user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
    link = Link.create(destination_url: 'argrre3=:', title: '', user: user, short_url: 'toon-link/ezrfous')

    expect(link).to_not be_valid
    other_link = Link.create(destination_url: 'https://www.google.com', title: '', user: user, short_url: 'toon-link/azfrf')
    expect(other_link).to be_valid
  end

  it 'has a uniq short_url' do
    user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
    link = Link.create(destination_url: 'https://www.google.com', title: '', user: user, short_url: 'toon-link/ezrfous')
    link_two = Link.create(destination_url: 'https://www.google.com', title: '', user: user, short_url: 'toon-link/ezrfous')
    expect(link_two).to_not be_valid
  end
end
