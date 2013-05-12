class Transaction < ActiveRecord::Base
  belongs_to :lender
  belongs_to :debtor
  belongs_to :label
  
  attr_accessible :lender_id
  attr_accessible :debtor_id
  attr_accessible :label_id

  attr_accessible :amount
  attr_accessible :comment
  attr_accessible :date
end
