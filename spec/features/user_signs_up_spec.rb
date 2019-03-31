require 'rails_helper'

feature 'User signs up' do
  background do
    create(:chatroom)
  end

  scenario 'with valid email and password' do
    sign_up_with('test@test.com', 'test12345')
    expect(page).to have_content('A message with a confirmation link has been sent to your email address.')
  end
end