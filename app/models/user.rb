class User < ActiveRecord::Base
  has_many :transactions

  attr_accessible :balance, :email, :name
end
