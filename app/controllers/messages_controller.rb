class MessagesController < ApplicationController
  def create
  end

  private

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