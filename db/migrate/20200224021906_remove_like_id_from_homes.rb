class RemoveLikeIdFromHomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :homes, :like_id, :integer
  end
end
