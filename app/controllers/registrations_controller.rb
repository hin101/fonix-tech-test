class RegistrationsController < Devise::RegistrationsController
  after_action :assign_chatroom

  protected

  def assign_chatroom
    # As this is a prototype we can assign the first chatroom
    # via an after action hook when the user registers.
    resource.tap do |r|
      r.chatrooms << Chatroom.first
      r.save!
    end if resource.persisted?
  end
end