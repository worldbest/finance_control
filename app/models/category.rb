class Category < ActiveRecord::Base
  has_many :wallets # категория имеет много кошельков
  acts_as_nested_set

  scope :only_root, -> {where(parent_id: nil)}
end
