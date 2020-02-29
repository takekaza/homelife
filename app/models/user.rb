class User < ApplicationRecord
  has_many :accounts
  has_many :likes, dependent: :destroy
  has_many :homes ,dependent: :destroy
  has_many :liked_homes, through: :likes, source: :home
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 12 }
end
