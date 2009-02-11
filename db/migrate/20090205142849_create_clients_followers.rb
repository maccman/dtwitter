class CreateClientsFollowers < ActiveRecord::Migration
  def self.up
    create_table :clients_followers, :id => false do |t|
      t.integer :client_id
      t.integer :follower_id
    end
  end

  def self.down
    drop_table :clients_followers
  end
end
