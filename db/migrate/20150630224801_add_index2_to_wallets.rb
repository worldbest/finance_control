class AddIndex2ToWallets < ActiveRecord::Migration
  def change
    add_column :wallets, :typew_id, :integer
  end
end
