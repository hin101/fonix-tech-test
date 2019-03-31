require 'rails_helper'

feature 'User signs in' do
  scenario 'with valid email and password' do
    sign_in
    expect(page).to have_content('Signed in successfully')
  end
end