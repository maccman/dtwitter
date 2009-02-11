class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.integer :user_id
      t.string  :handle
      t.string  :endpoint
      t.boolean :local
      t.timestamps
    end
    add_index :clients, :user_id
    add_index :clients, :handle
    add_index :clients, :endpoint
  end

  def self.down
    drop_table :clients
  end
end
