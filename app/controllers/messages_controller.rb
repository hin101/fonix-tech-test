class MessagesController < ApplicationController
  def create
    broadcast_message if message.save
  end

  private

  def broadcast_message
    ActionCable.server.broadcast 'messages',
      message: message.content,
      user: message.user.email
    head :ok
  end

  def message
    @message ||= Message.new.tap do |m|
      m.assign_attributes(message_params)
      m.user = current_user
    end
  end

  def message_params
    params.require(:message).permit(:content, :chatroom_id)
  end
end