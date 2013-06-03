class SplitExpense < ActiveRecord::Base
  belongs_to :lender
  belongs_to :debtor
  belongs_to :label
  attr_accessible :amount, :comment, :ds
end
