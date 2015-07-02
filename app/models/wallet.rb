class Wallet < ActiveRecord::Base
  belongs_to :category # кошелек принадлежит категории
  belongs_to :typew
  CURRENCY_TYPE = %w(rub usd eur) # массив валют
  validates :currency, inclusion: CURRENCY_TYPE
  validates :category_id, presence: true
  validates :money, numericality: true
  validates :name, uniqueness: true

 end
