class User < ApplicationRecord
  validates :name,     presence: true
  validates :user_id,  presence: true
  validates :password, presence: true
end
