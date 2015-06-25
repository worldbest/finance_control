class Wallet < ActiveRecord::Base
  has_many :transactions
  CURRENCY_TYPE = %w(rub usd eur)
  validates :currency, inclusion: CURRENCY_TYPE

 end
