class Transaction < ActiveRecord::Base
  belongs_to :lender
  belongs_to :debtor
  
  attr_accessible :lender_id
  attr_accessible :debtor_id

  attr_accessible :date
  attr_accessible :amount
end
