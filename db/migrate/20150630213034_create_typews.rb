class CreateTypews < ActiveRecord::Migration
  def change
    create_table :typews do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
