class ChangeColumnToHome < ActiveRecord::Migration[5.0]
  # def change
  # end
  def up
    change_column :homes, :user_id, :integer, foreign_key: true, default: 0
    change_column :homes, :like_id, :integer, foreign_key: true, default: 0
  end
  def down
    change_column :homes, :user_id, :integer, default: 0
    change_column :homes, :like_id, :integer, default: 0
  end
end
