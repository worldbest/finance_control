class Category < ActiveRecord::Base
  has_many :wallets # категория имеет много кошельков
end
