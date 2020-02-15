class ChangeColumnToLike < ActiveRecord::Migration[5.0]
  # def change
  # end
  def up
    change_column :likes, :user_id, :integer, foreign_key: true, default: 0
    change_column :likes, :home_id, :integer, foreign_key: true, default: 0
  end
  def down
    change_column :likes, :user_id, :integer, default: 0
    change_column :likes, :home_id, :integer, default: 0
  end

end
