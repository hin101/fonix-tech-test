class CreateChatroomsCreateMessagesCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :topic, null: false, unique: true
      t.timestamps
    end

    create_table :messages do |t|
      t.belongs_to :chatroom
      t.belongs_to :user
      t.timestamps
    end

    add_foreign_key :messages, :chatrooms
    add_foreign_key :messages, :users
  end
end
