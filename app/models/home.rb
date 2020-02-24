class Home < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
  has_many :liked_users, through: :likes, source: :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :images ,presence: true
  validates :likes ,presence: true
  validates :text, presence: true
end
