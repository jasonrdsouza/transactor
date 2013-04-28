class Label < ActiveRecord::Base
  has_many :transactions

  attr_accessible :name
end
