class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.authenticatable
      t.confirmable
      t.recoverable
      t.rememberable
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
