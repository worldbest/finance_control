class ChangeNameType < ActiveRecord::Migration
  def change
    rename_column :wallets, :type, :wtype
  end
end
