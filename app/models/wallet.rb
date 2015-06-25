class Wallet < ActiveRecord::Base

  CURRENCY_TYPE = %w(rub usd eur)
  validates :currency, inclusion: CURRENCY_TYPE

 end
