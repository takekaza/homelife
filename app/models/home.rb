class Home < ApplicationRecord
  has_many :likes
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :images ,presence: true
  validates :text, presence: true
end
