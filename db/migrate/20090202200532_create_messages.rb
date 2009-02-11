class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.text      :body
      t.integer   :receiver_id
      t.integer   :sender_id
      t.datetime  :created_at
    end
  end

  def self.down
    drop_table :messages
  end
end
