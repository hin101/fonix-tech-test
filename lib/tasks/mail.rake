namespace :mail do
  desc "Email stats to users"
  task stats: :environment do
    User.all.each do |u|
      message_stats = MessageStats.new(u)
      MessageMailer.message_stats(u, message_stats).deliver
    end
  end

end
