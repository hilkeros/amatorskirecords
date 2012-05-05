class Card < ActiveRecord::Base
  belongs_to :order
  
  attr_accessible :ip_address, :first_name, :last_name, :card_type, :card_expires_on
  attr_accessor :card_number, :card_verification
  
  
end
