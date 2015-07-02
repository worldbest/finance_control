class DeleteColumnType < ActiveRecord::Migration
  def change
    remove_column :wallets, :wtype
  end
end
