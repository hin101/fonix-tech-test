class MessageStats
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def messages_in_last_week
    "#{message_count(last_week_date_range)} messages has been exchanged in the last week"
  end

  def messages_since_last_message
    return last_message_output if last_message
    "No messages sent"
  end

  private

  def last_week_date_range
    Date.today.beginning_of_week..Date.today.end_of_week
  end

  def last_message
    Message.where(user: user).last
  end

  def last_message_date
    @last_message_date ||= last_message.created_at
  end

  def messages_since_last
    last_message_date..Date.today
  end

  def last_message_date_format
    last_message_date.strftime("#{last_message_date.day.ordinalize} of %B")
  end

  def last_message_output
    "#{message_count(messages_since_last)} messages since your last message on the #{last_message_date_format}"
  end

  def message_count(range_conditions)
    Message.where(created_at: range_conditions).count
  end
end