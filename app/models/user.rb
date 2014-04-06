class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  # the above prevents email duplication by downcasing first
  
  validates :name, presence: true, length: { maximum: 50 }
  # validates(:name, presence: true) is also valid
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: { case_sensitive: false } 
    # rails infers that uniquess: true from the above statement
end