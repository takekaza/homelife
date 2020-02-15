class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.integer :user_id
      t.text :text
      t.integer :like_id

      t.timestamps
    end
  end
end
