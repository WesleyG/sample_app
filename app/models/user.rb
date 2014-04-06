class User < ActiveRecord::Base
  validates :name, presence: true
  # validates(:name, presence: true) is also valid
  validates :email, presence: true
end