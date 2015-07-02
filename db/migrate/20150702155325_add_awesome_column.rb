class AddAwesomeColumn < ActiveRecord::Migration
  def change
    add_column :categories, :parent_id, :integer # Comment this line if your project already has this column
    # Category.where(parent_id: 0).update_all(parent_id: nil) # Uncomment this line if your project already has :parent_id
    add_column :categories, :lft,       :integer
    add_column :categories, :rgt,       :integer

    Category.rebuild!
  end
end
