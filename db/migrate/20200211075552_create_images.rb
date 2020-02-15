class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :home_id, foreign_key: true
      t.text :url, null: false

      t.timestamps
    end
  end
end
