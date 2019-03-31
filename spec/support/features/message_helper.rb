module Features
  module MessageHelpers
    def initialize_message
      message = create(:message, user: sign_in)
      message.chatroom
    end
  end
end