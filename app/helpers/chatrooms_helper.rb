module ChatroomsHelper
  def chatroom
    @chatroom ||= Chatroom.find(params[:id])
  end

  def message
    @message ||= Message.new
  end
end