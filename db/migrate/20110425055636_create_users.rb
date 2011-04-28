class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :remember_token
      t.datetime :remember_token_expires_at
      t.boolean :is_blocked, :default => false
      t.timestamps
    end
    User.create(:email => 'dealkat2@gmail.com', :password => 'srdbmafh21')
  end

  def self.down
    drop_table :users
  end
end
