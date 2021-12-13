class User < ApplicationRecord
  has_secure_password

  attachment :profile_image

  has_many :gears, dependent: :destroy
  has_many :plans, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
