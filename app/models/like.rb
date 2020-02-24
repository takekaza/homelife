class Like < ApplicationRecord
  belongs_to :user
  belongs_to :home
  validates :user_id, presence: true
  validates :home_id, presence: true
end
