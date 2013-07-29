class User < ActiveRecord::Base
  has_many :transactions

  attr_accessible :balance, :email, :name

  def dollar_balance
    cents_per_dollar = 100
    cents = balance.abs % cents_per_dollar
    dollars = balance.abs / cents_per_dollar
    balance < 0 ? "- $#{dollars}.#{cents}" : "$#{dollars}.#{cents}"
  end

end
