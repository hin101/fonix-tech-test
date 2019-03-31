include Warden::Test::Helpers
Warden.test_mode!

module Features
  module SessionHelpers
    def sign_in
      user = create(:user, confirmed_at: Time.now)
      login_as(user, scope: :user)
      user
    end
  end
end