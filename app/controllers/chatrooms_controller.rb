class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  helper_method :chatroom
  helper_method :message

  private

  def chatroom
    @chatroom ||= Chatroom.find(params[:id])
  end

  def message
    @message ||= Message.new
  end
end