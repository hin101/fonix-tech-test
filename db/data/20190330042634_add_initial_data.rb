class AddInitialData < ActiveRecord::Migration[5.2]
  def up
    Chatroom.create(topic: 'Test chatroom')
    u = User.create!(email: 'test@test.com', password: 'test1234', password_confirmation: 'test1234').tap do |u|
      u.confirmation_token = 'RmphaQhR1fs3NrSaGfa_'
      u.confirmed_at = Time.now
      u.chatrooms << Chatroom.first
      u.save!
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
