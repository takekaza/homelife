class Account < ApplicationRecord
  belongs_to :user

  def self.search(search)
    return Account.all unless search
    Account.where('text LIKE(?)', "%#{search}%")
  end
end
