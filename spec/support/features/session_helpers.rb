include Warden::Test::Helpers
Warden.test_mode!

module Features
  module SessionHelpers
    def sign_up_with(email, password)
      visit new_user_registration_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', with: password
      click_button 'Sign up'
    end

    def sign_in
      user = create(:user, confirmed_at: Time.now)
      login_as(user, scope: :user)
      user
    end
  end
end