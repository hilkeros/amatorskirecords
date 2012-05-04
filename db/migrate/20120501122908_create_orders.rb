class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street
      t.string :street_number
      t.string :box_number
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :pay_type
      t.integer :amount
      t.boolean :paid, :default => false
      t.boolean :shipped, :default => false

      t.timestamps
    end
  end
end
