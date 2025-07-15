class CreateChatSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_sessions do |t|
      t.references :project, null: false, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
