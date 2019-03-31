require 'rails_helper'

feature 'Chatroom' do
  scenario 'users sees a list of chatrooms assigned to them when logged in' do
    chatroom = initialize_message
    visit chatrooms_path
    expect(page).to have_content(chatroom.topic)
  end

  scenario 'users do not have access to chatrooms if not logged in' do
    visit chatrooms_path
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end

  scenario 'user can send message in chatroom', js: true do
    initialize_message
    visit chatroom_path chatroom
    fill_in "message_content", with: 'test'
    click_button 'send'
    expect(page).to have_content('test')
  end
end