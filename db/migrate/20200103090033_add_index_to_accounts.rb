class AddIndexToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_index :accounts,  :name
  end
end
