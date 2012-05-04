class Order < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :street, :street_number, :box_number, :zipcode, :city, :country, :pay_type, :amount, :paid, :shipped
  attr_accessor :card_number, :card_verification, :card_type, :card_expires_on, :ip_address
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true,
                    :format => { :with => email_regex }
  validates :street, :presence => true
  validates :street_number, :presence => true
  validates :zipcode, :presence => true
  validates :city, :presence => true
  validates :country, :presence => true
  validates :pay_type, :presence => true
  validates :amount, :presence => true
  
  def price
    self.amount * 15 + 5  
  end
end
