require 'spec_helper'

describe Order do
  
  before(:each) do
    @attr = { :first_name => "Hilke", :last_name => "Ros", :email => "hilkeros@gmail.com", :street => 'Holstraat', :street_number => '55',
              :box_number => "14A", :zipcode => "9000", :city => "Gent", :country => "Belgium", :pay_type => "bank transfer", :amount => "2"}
  end
  
  it "should create a new instance given valid attributes" do
    Order.create!(@attr)
  end
  
  it "should require a first name" do
    no_first_name_order = Order.new(@attr.merge(:first_name => ""))
    no_first_name_order.should_not be_valid
  end
  
  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_order = Order.new(@attr.merge(:email => address))
      valid_email_order.should be_valid
    end
  end
  
  it "should reject invalid email adresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_order = Order.new(@attr.merge(:email => address))
      invalid_email_order.should_not be_valid
    end
  end

end
