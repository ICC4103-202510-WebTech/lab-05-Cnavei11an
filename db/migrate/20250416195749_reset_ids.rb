class ResetIds < ActiveRecord::Migration[8.0]
  def change
    execute "TRUNCATE users RESTART IDENTITY CASCADE;"
    execute "TRUNCATE chats RESTART IDENTITY CASCADE;"
    execute "TRUNCATE messages RESTART IDENTITY CASCADE;"
  end
end
