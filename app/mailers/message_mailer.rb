class MessageMailer < ApplicationMailer
  default from: "admin@chatbox.com"

  def message_stats(user, stats)
    @messages_in_last_week = stats.messages_in_last_week
    @messages_since_last_message = stats.messages_since_last_message
    mail(to: user.email, subject: 'Stats for chatbox')
  end
end
