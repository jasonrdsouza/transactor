class Transaction < ActiveRecord::Base
  belongs_to :lender
  belongs_to :debtor
  belongs_to :label
  
  attr_accessible :lender_id
  attr_accessible :debtor_id
  attr_accessible :label_id

  attr_accessible :date
  attr_accessible :amount
  attr_accessible :comment

  def process!
    lender.balance += (amount / 2)
    lender.save
    debtor.balance -= (amount / 2)
    debtor.save
  end

  def reverse!
    lender.balance -= (amount / 2)
    lender.save
    debtor.balance += (amount / 2)
    debtor.save
  end

end
