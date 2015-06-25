class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name
      t.string :type
      t.float :money

      t.timestamps null: false
    end
  end
end
