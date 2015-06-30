class AddIndexToWallets < ActiveRecord::Migration
  def change
    add_column :wallets, :category_id, :integer
  end
end
