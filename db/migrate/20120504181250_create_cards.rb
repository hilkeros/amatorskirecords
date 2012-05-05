class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :ip_address
      t.string :first_name
      t.string :last_name
      t.string :card_type
      t.date :card_expires_on
      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
